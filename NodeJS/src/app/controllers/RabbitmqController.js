const amqp = require('amqplib');
const ffmpegPath = require('@ffmpeg-installer/ffmpeg').path;
const ffmpeg = require('fluent-ffmpeg');
ffmpeg.setFfmpegPath(ffmpegPath);
const { v4: uuidv4 } = require('uuid');
const firebase = require('../service/firebase')
const {blobServiceClient} = require('../service/azureStorage')
const fs = require('fs');
const path = require("path");
require('dotenv').config();

const hostName = process.env.MQ_HOSTNAME;
const userName = process.env.MQ_USERNAME;
const passWord = process.env.MQ_PASSWORD;
const vHost = process.env.MQ_VHOST;
const consumerQueueName = process.env.MQ_CONVERSION_QUEUE;
const producerQueueName = process.env.MQ_CONVERSION_RESPONSE_QUEUE;
const baseUrl = process.env.BASE_URL;

async function consumeQueue() {
  try {
    const connection = await amqp.connect({
      protocol: 'amqp',
      hostname: hostName,
      username: userName,
      password: passWord,
      vhost: vHost,
    }, );

    const queueName = consumerQueueName;
    const uploadFolder = 'uploads';
        
    if (!fs.existsSync(uploadFolder)) {
         fs.mkdirSync(uploadFolder);
    }

    const channel = await connection.createChannel();

    await channel.assertQueue(queueName, { durable: true });

    console.log(`log: Consumer is waiting for messages. To exit, press CTRL+C.`);

    channel.consume(queueName, async (message) => {
        try {
            // Parse the JSON message
            const messageData = JSON.parse(message.content.toString());
      
            // Extract the file name and content
            const fileName = messageData.FileName;
            const blobName = messageData.BlobName;

            console.log(fileName,blobName);

        
            // Save the file to the "uploads" folder
            const filePath = await downloadBlobAndSave('originalmp3file', blobName, uploadFolder);

            const fileNameWithoutExtension = fileName.split('.').slice(0, -1).join('.');
            const m3u8Link = await ConvertFileMp3(fileNameWithoutExtension, filePath);
            console.log('Log: convert successfully')

            // Send a return message to the conversion_response_queue
            const responseQueue = producerQueueName;
            const responseData = {
            FileName: fileName,
            Status: 'Success',
            Message: 'Conversion successful',
            VoiceFileLink: m3u8Link
            };

            channel.sendToQueue(responseQueue, Buffer.from(JSON.stringify(responseData)));
            console.log(`log: Sent a response message to ${responseQueue}`);

        } catch (error) {
          console.error('log: Error processing the message:', error);

          // Send a return error message to the conversion_response_queue
          const messageData = JSON.parse(message.content.toString());
          const responseQueue = producerQueueName;
          const responseData = {
          FileName: messageData.FileName,
          Status: 'Error',
          Message: 'Conversion False',
          VoiceFileLink: 'null'
          };

          channel.sendToQueue(responseQueue, Buffer.from(JSON.stringify(responseData)));
          console.log(`log: Sent a response error message to ${responseQueue}`);
        }
      }, { noAck: true });

  } catch (error) {
    throw error;
  }
}

async function ConvertFileMp3(fileName, filePath){
    try {
        const outputDirectory = `src/temp/chunks/${fileName}`;
            const outputM3U8FileName = 'playlist.m3u8';
            const outputPath = `${outputDirectory}/${outputM3U8FileName}`;
        
            const containerName = fileName;
            const containerClient = blobServiceClient.getContainerClient(containerName);
        
            // Create the container if it doesn't exist
            const containerExists = await containerClient.exists();
            if (!containerExists) {
                    const createContainerResponse = await containerClient.create();
                    console.log(`log: Container "${containerName}" created successfully.`);
            }

            if (!fs.existsSync(outputDirectory)) {
                fs.mkdirSync(outputDirectory);
            }
            
            await new Promise((resolve, reject) => {
                ffmpeg()
                    .input(filePath)
                    .inputFormat('mp3')
                    .outputOptions('-hls_time 10')
                    .outputOptions('-hls_list_size 0')
                    .outputOptions(`-hls_segment_filename ${outputDirectory}/segment_%02d.ts`)
                    .output(outputPath)
                    .on('end', () => {
                        console.log('log: Conversion completed.');
                        resolve();
                    })
                    .on('error', (err) => {
                        console.error('log: Conversion error:', err);
                        reject(err);
                    })
                    .run();
            });

            // remove file mp3
            if (fs.existsSync(filePath)){
                fs.unlink(filePath, (err) => {
                    if (err) {
                        console.error('log: Error deleting MP3 file:', err);
                    } else {
                        console.log('log: MP3 file deleted successfully.');
                    }
                });
            }

            const fileNames = fs.readdirSync(outputDirectory);
            const filePaths = fileNames.map((fileItemName) => path.join(outputDirectory, fileItemName));
    
            console.log('log: Uploading chunks to Azure Blob Storage');
            for (const fileItemPath of filePaths) {
                const blobName = path.basename(fileItemPath);
                const blobClient = containerClient.getBlockBlobClient(blobName);
    
                try {
                    await blobClient.uploadFile(fileItemPath, { bufferSize: 4 * 1024 * 1024, maxBuffers: 5 });
                    console.log('log: Blob upload successful!');
                } catch (error) {
                    console.error('log: Error uploading file', error);
                    throw new Error("log: Error uploading file chunk to azure");
                }
            }
    
            if (fs.existsSync(outputDirectory)) {
                try {
                    fs.rmSync(outputDirectory, { recursive: true });
                    console.log(`log: Directory ${outputDirectory} deleted.`);
                } catch (err) {
                    console.error(`log: Error deleting directory: ${err}`);
                }
            } else {
                console.log(`log: Directory ${outputDirectory} doesn't exist.`);
            }

            await releaseLease(containerClient,'LeaseStatus');

            return `${baseUrl}/etravel/live/hls/${fileName}/playlist.m3u8`;

    } catch (error) {
        console.error('Error processing the message:', error);
        const outputDirectory = `src/temp/chunks/${fileName}`;
            if (fs.existsSync(outputDirectory)) {
                try {
                    fs.rmSync(outputDirectory, { recursive: true });
                    console.log(`log: Directory ${outputDirectory} deleted.`);
                } catch (err) {
                    console.error(`log: Error deleting directory: ${err}`);
                }
            }

            if (fs.existsSync(filePath)){
                fs.unlink(filePath, (err) => {
                    if (err) {
                        console.error('log: Error deleting MP3 file:', err);
                    } else {
                        console.log('log: MP3 file deleted successfully.');
                    }
                });
            }
            
            const containerName = fileName;
            const containerClient = blobServiceClient.getContainerClient(containerName);
            await releaseLease(containerClient,'LeaseStatus');
            throw new Error(error.message);
    }
}

async function downloadBlobAndSave(containerName, blobName, localFolderPath) {
    const containerClient = blobServiceClient.getContainerClient(containerName);
    const blobClient = containerClient.getBlockBlobClient(blobName);

    try {
        // Check if the container exists
        const containerExists = await containerClient.exists();
        if (!containerExists) {
            throw new Error(`log: Container "${containerName}" does not exist.`);
        }

        const buffer = await blobClient.downloadToBuffer();
        const filePath = path.join(localFolderPath, blobName);

        // Ensure the local folder exists
        if (!fs.existsSync(localFolderPath)) {
            fs.mkdirSync(localFolderPath, { recursive: true });
        }

        // Save the blob content to a file
        fs.writeFileSync(filePath, buffer);

        console.log(`log: Blob "${blobName}" downloaded and saved to "${filePath}"`);
        return filePath;
    } catch (error) {
        console.error(`log: Error downloading blob "${blobName}":`, error);
        throw error;
    }
}

async function releaseLease(containerClient, leaseMetadataKey) {
    try {
      // Reset metadata to indicate the container is unleased
      const metadata = {
        [leaseMetadataKey]: 'Unleased'
      };
  
      await containerClient.setMetadata(metadata);
  
      console.log(`Container released. Lease status set to 'Unleased'.`);
    } catch (error) {
      console.error(`Error releasing lease: ${error.message}`);
    }
  }
module.exports = consumeQueue();