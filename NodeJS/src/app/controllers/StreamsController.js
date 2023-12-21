const ffmpegPath = require('@ffmpeg-installer/ffmpeg').path;
const ffmpeg = require('fluent-ffmpeg');
ffmpeg.setFfmpegPath(ffmpegPath);
const { v4: uuidv4 } = require('uuid');
const firebase = require('../service/firebase');
const { blobServiceClient } = require('../service/azureStorage');
const fs = require('fs');
const path = require('path');
const { Readable } = require('stream');
const { count } = require('console');
const amqp = require('amqplib');

class StreamsController {
  // Convert mp3 to m3u8
  async convertFile(req, res) {
    try {
      const outputDirectory = `src/temp/chunks/${req.query.fileName}`;
      const outputM3U8FileName = 'playlist.m3u8';
      const outputPath = `${outputDirectory}/${outputM3U8FileName}`;

      const containerName = req.query.fileName;
      const containerClient =
        blobServiceClient.getContainerClient(containerName);

      // Create the container if it doesn't exist
      const containerExists = await containerClient.exists();
      if (!containerExists) {
        const createContainerResponse = await containerClient.create();
        console.log(`Container "${containerName}" created successfully.`);
      }

      if (!fs.existsSync(outputDirectory)) {
        fs.mkdirSync(outputDirectory);
      }

      await new Promise((resolve, reject) => {
        ffmpeg()
          .input(req.file.path)
          .inputFormat('mp3')
          .outputOptions('-hls_time 10')
          .outputOptions('-hls_list_size 0')
          .outputOptions(
            `-hls_segment_filename ${outputDirectory}/segment_%02d.ts`
          )
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

      const blob = firebase.bucket.file(`VoiceFile/${req.file.originalname}`);
      const uuid = uuidv4();
      const blobWriter = blob.createWriteStream({
        metadata: {
          contentType: req.file.mimetype,
          metadata: {
            firebaseStorageDownloadTokens: uuid,
          },
        },
      });

      await new Promise((resolve, reject) => {
        blobWriter.end(fs.readFileSync(req.file.path));
        blobWriter
          .on('finish', async () => {
            console.log('log: MP3 file uploaded to Firebase Storage.');
            fs.unlink(req.file.path, (err) => {
              if (err) {
                console.error('log: Error deleting MP3 file:', err);
                reject(err);
              } else {
                console.log('log: MP3 file deleted successfully.');
                resolve();
              }
            });
          })
          .on('error', (err) => {
            console.error('log: Error uploading MP3 file:', err);
            reject(err);
          });
      });

      const fileNames = fs.readdirSync(outputDirectory);
      const filePaths = fileNames.map((fileName) =>
        path.join(outputDirectory, fileName)
      );

      console.log('log: Uploading chunks to Azure Blob Storage');
      for (const filePath of filePaths) {
        const blobName = path.basename(filePath);
        const blobClient = containerClient.getBlockBlobClient(blobName);

        try {
          await blobClient.uploadFile(filePath, {
            bufferSize: 4 * 1024 * 1024,
            maxBuffers: 5,
          });
          console.log('log: Blob upload successful!');
        } catch (error) {
          console.error('log: Error uploading file', error);
          return res
            .status(500)
            .json({ error: 500, message: 'Error uploading file to blob!' });
        }
      }

      if (fs.existsSync(outputDirectory)) {
        try {
          fs.rmSync(outputDirectory, { recursive: true });
          console.log(`log: Directory ${outputDirectory} deleted.`);
        } catch (err) {
          console.error(`log: Error deleting directory: ${err}`);
          return res
            .status(500)
            .json({ error: 500, message: `Error deleting directory: ${err}` });
        }
      } else {
        console.log(`log: Directory ${outputDirectory} doesn't exist.`);
        return res
          .status(400)
          .json({
            error: 400,
            message: `Directory ${outputDirectory} doesn't exist.`,
          });
      }

      res.status(200).json({
        message: 'Conversion completed',
        fileLink: `${process.env.BASE_URL}/etravel/live/hls/${req.query.fileName}/playlist.m3u8`,
      });
    } catch (error) {
      console.error('An error occurred:', error);

      const outputDirectory = `src/temp/chunks/${req.query.fileName}`;
      if (fs.existsSync(outputDirectory)) {
        try {
          fs.rmSync(outputDirectory, { recursive: true });
          console.log(`log: Directory ${outputDirectory} deleted.`);
        } catch (err) {
          console.error(`log: Error deleting directory: ${err}`);
          return res
            .status(500)
            .json({ error: 500, message: `Error deleting directory: ${err}` });
        }
      }

      if (fs.existsSync(req.file.path)) {
        fs.unlink(req.file.path, (err) => {
          if (err) {
            console.error('log: Error deleting MP3 file:', err);
          } else {
            console.log('log: MP3 file deleted successfully.');
          }
        });
      }

      return res.status(500).json({
        error: 'An error occurred.',
        message: error.message,
      });
    }
  }

  HlsStreaming(req, res) {
    console.log('log: request starting...');

    const folder = req.params.folder; // Lấy giá trị tham số động cho folder
    const filename = req.params.filename; // Lấy giá trị tham số động cho filename
    const filePath = `src/temp/chunks/${folder}/${filename}`;

    console.log(filePath);

    fs.readFile(filePath, function (error, content) {
      res.writeHead(200, { 'Access-Control-Allow-Origin': '*' });
      if (error) {
        if (error.code == 'ENOENT') {
          fs.readFile('./404.html', function (error, content) {
            res.end(content, 'utf-8');
          });
        } else {
          res.writeHead(500);
          res.end(
            'Sorry, check with the site admin for error: ' +
              error.code +
              ' ..\n'
          );
          res.end();
        }
      } else {
        res.end(content, 'utf-8');
      }
    });
  }

  async HlsStreamingV2(req, res) {
    console.log('log: request starting...');

    const folder = req.params.folder; // Lấy giá trị tham số động cho folder
    const filename = req.params.filename; // Lấy giá trị tham số động cho filename

    // Get container
    const containerName = folder;
    const containerClient = blobServiceClient.getContainerClient(containerName);

    // Create blob in storage
    const blobName = filename;
    const blobClient = containerClient.getBlockBlobClient(blobName);

    try {
      const response = await blobClient.download();

      res.writeHead(200, { 'Access-Control-Allow-Origin': '*' });

      // Stream the data to the response
      response.readableStreamBody.pipe(res);
    } catch (error) {
      console.error('Error downloading blob:', error);
      res.status(500).send('Error downloading blob');
    }
  }

  async ContainerExists(req, res) {
    const containerName = req.query.fileName;

    // Define a regular expression pattern to match lowercase letters and numbers
    const pattern = /^[a-z0-9]+$/;

    if (!pattern.test(containerName)) {
      return res.status(400).json({
        statusCode: 400,
        message: 'File name is invalid!',
      });
    }

    const containerClient = blobServiceClient.getContainerClient(containerName);

    // Create the container if it doesn't exist
    const containerExists = await containerClient.exists();
    if (!containerExists) {
      console.log(`Container "${containerName}" is not exist.`);
      res.status(200).json({
        statusCode: 200,
        message: 'file name is not exist!',
      });
    } else {
      console.log(`Container "${containerName}" is exist.`);
      res.status(400).json({
        statusCode: 400,
        message: 'file name is exist!',
      });
    }
  }

  async RemoveContainer(req, res) {
    const containerName = req.query.fileName;
    const containerClient = blobServiceClient.getContainerClient(containerName);

    // Check if the container exists
    const containerExists = await containerClient.exists();

    if (containerExists) {
      // Delete the container
      await containerClient.delete();
      console.log(`Container "${containerName}" has been deleted.`);
      res.status(200).json({
        statuscode: 200,
        message: `Container "${containerName}" has been deleted.`,
      });
    } else {
      console.log(`Container "${containerName}" does not exist.`);
      res.status(404).json({
        statuscode: 404,
        message: `Container "${containerName}" does not exist.`,
      });
    }
  }

  RemoveFile(req, res) {
    const directoryPath = `src/temp/chunks/${req.query.fileName}`;
    console.log(directoryPath);

    if (fs.existsSync(directoryPath)) {
      try {
        fs.rmdirSync(directoryPath, { recursive: true });
        console.log(`log: Thư mục ${directoryPath} đã được xóa.`);

        res.status(200).json({
          message: 'xóa file hoàn tất',
        });
      } catch (err) {
        console.error(`log: Lỗi khi xóa thư mục: ${err}`);

        res.status(500).json({
          error: `Lỗi khi xóa thư mục: ${err}`,
        });
      }
    } else {
      console.log(`log: Thư mục ${directoryPath} không tồn tại.`);

      res.status(400).json({
        error: `Thư mục ${directoryPath} không tồn tại.`,
      });
    }
  }

  async UploadToBlobStorage(req, res) {
    // Get container
    const containerName = 'etravel-voicefile';
    const containerClient = blobServiceClient.getContainerClient(containerName);

    // Create blob in storage
    const blobName = 'playlist.m3u8';
    const blobClient = containerClient.getBlockBlobClient(blobName);

    // file path
    const localFilePath = 'src/temp/chunks/NotreDameCathedral/playlist.m3u8';

    try {
      await blobClient.uploadFile(localFilePath, {
        bufferSize: 4 * 1024 * 1024,
        maxBuffers: 5,
      });
      console.log('File uploaded successfully');
      res.status(200).json({
        error: `File uploaded successfully!`,
      });
    } catch (error) {
      console.error('Error uploading file', error);
      res.status(500).json({
        error: `Error uploading file to blob!`,
      });
    }
  }

  async GetFileBlob(req, res) {
    const blobName = req.params.blobName;
    const containerClient =
      blobServiceClient.getContainerClient('notredamecathedral');
    const blobClient = containerClient.getBlockBlobClient(blobName);

    try {
      const response = await blobClient.download();

      // Ensure the content type is set appropriately
      res.setHeader('Content-Type', response.contentType);

      // Stream the data to the response
      response.readableStreamBody.pipe(res);
    } catch (error) {
      console.error('Error downloading blob:', error);
      res.status(500).send('Error downloading blob');
    }
  }

  async UploadFolderToBlob(req, res) {
    const containerName = req.params.fileName.toLowerCase();
    console.log(containerName);
    const containerClient = blobServiceClient.getContainerClient(containerName);

    // Create the container
    const createContainerResponse = await containerClient.create();
    console.log(
      `Container was created successfully.\n\trequestId:${createContainerResponse.requestId}\n\tURL: ${containerClient.url}`
    );
    try {
      if (!req.files || req.files.length === 0) {
        return res.status(400).send('No files were uploaded.');
      }

      for (const file of req.files) {
        const blobName = file.originalname;
        const blobClient = containerClient.getBlockBlobClient(blobName);

        // Convert the Buffer to a readable stream
        const readStream = new Readable();
        readStream._read = () => {};
        readStream.push(file.buffer);
        readStream.push(null);

        // Upload the file to Azure Blob Storage
        await blobClient.uploadStream(readStream, file.buffer.length);
      }

      return res.status(200).send('Files uploaded successfully.');
    } catch (error) {
      console.error('Error uploading files:', error);
      return res.status(500).send('Error uploading files.');
    }
  }

  async SendMessage(req, res) {
    try {
      const connection = await amqp.connect({
        protocol: 'amqp',
        hostname: hostName,
        username: userName,
        password: passWord,
        vhost: vHost,
      });
      const channel = await connection.createChannel();
      const responseQueue = 'conversion_response_queue';
      const responseData = {
        FileName: 'fileName',
        Status: 'Success',
        Message: 'Conversion successful',
        VoiceFileLink: 'm3u8Link',
      };

      channel.sendToQueue(
        responseQueue,
        Buffer.from(JSON.stringify(responseData))
      );
      console.log(`log: Sent a response message to ${responseQueue}`);
      return res.status(200).send('sends successfully.');
    } catch (error) {
      return res.status(500).send(error);
    }
  }

  async downloadBlobAndSave(req, res) {
    const localFolderPath = 'uploads';
    const containerClient =
      blobServiceClient.getContainerClient('originalmp3file');
    const blobClient = containerClient.getBlockBlobClient('moterov3.mp3');

    try {
      const downloadResponse = await blobClient.download();
      const filePath = path.join(localFolderPath, 'moterov3.mp3');

      // Ensure the local folder exists
      if (!fs.existsSync(localFolderPath)) {
        fs.mkdirSync(localFolderPath, { recursive: true });
      }

      // Create a write stream to save the blob content
      const writeStream = fs.createWriteStream(filePath);
      await new Promise((resolve, reject) => {
        downloadResponse.readableStreamBody
          .on('data', (chunk) => writeStream.write(chunk))
          .on('end', () => {
            writeStream.end();
            resolve();
          })
          .on('error', (error) => {
            writeStream.end();
            reject(error);
          });
      });

      console.log(`Blob "${blobName}" downloaded and saved to "${filePath}"`);
      res.send(filePath);
    } catch (error) {
      console.error(`Error downloading blob "${blobName}":`, error);
      throw error;
      res.send('error');
    }
  }
}
module.exports = new StreamsController();
