const amqp = require('amqplib');

const hostName = process.env.HOSTNAME;
const userName = process.env.USERINFO;
const passWord = process.env.PASSWORD;
const vHost = process.env.VHOST;

const connectToRabbitMQ = async (callback) => {
  try {
    const rabbitmqHost = `amqp://${userName}:${passWord}@${hostName}/${vHost}`;
    console.log(rabbitmqHost);
    const connection = await amqp.connect(rabbitmqHost);

    await connection.createChannel((error, channel) => {
      if (error) {
        throw error;
      }

      callback(connection, channel);
    });
  } catch (error) {
    console.error('Error setting up the connection to RabbitMQ:', error);
  }
};

module.exports = { connectToRabbitMQ };