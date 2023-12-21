const { BlobServiceClient } = require('@azure/storage-blob');
require('dotenv').config();

const CONNECTION_STRING = process.env.AZURE_STORAGE_CONNECTION_STRING;
const blobServiceClient = BlobServiceClient.fromConnectionString(CONNECTION_STRING);

module.exports = {
    blobServiceClient
}