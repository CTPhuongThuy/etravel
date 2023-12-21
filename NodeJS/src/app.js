const express = require('express');
const multer = require('multer');
const bodyParser = require('body-parser');
const upload = multer({ dest: 'uploads/' });
require('dotenv').config();

const app = express();
app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());

app.use((req, res, next) => {
  res.setHeader('Access-Control-Allow-Origin', '*');
  res.setHeader(
    'Access-Control-Allow-Methods',
    'GET, POST, PUT, PATCH, DELETE'
  );
  res.setHeader('Access-Control-Allow-Headers', 'Content-Type, Authorization');
  next();
});
const PORT = process.env.PORT || 3000;

const streamsController = require('./app/controllers/StreamsController');
const rabbitmq = require('./app/controllers/RabbitmqController');

rabbitmq;

let online = [
  {
    id: 999,
    firstName: 'Socket',
    lastName: 'Test User FPT (NOT USED)',
    image:
      'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/Account%2Ftraveller_avatar_default%20(1).png?alt=media&token=4c1771d3-6d5b-4ee5-b12c-cfb347378d6b',
    latitude: 10.841359410992592,
    longitude: 106.80985080981178,
    socketId: 'Xjxe7BTJFGMkGzXJAAAD',
    languageCode: 'en-us',
    allowSearch: true,
  },
  {
    id: 998,
    firstName: 'Socket',
    lastName: 'Test User Go Vap (NOT USED)',
    image:
      'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/Account%2Ftraveller_avatar_default%20(2).png?alt=media&token=1bc35639-f459-4047-952b-8ed6da8b4189',
    latitude: 10.839157332275157,
    longitude: 106.65298199631862,
    socketId: 'n9PJvgaaPc-yXK7zAAAH',
    languageCode: 'en-us',
    allowSearch: false,
  },
];

app.get('/', (req, res) => {
  res.send('Hello World! nodejs server');
});

// get method to check container is exist
app.get('/validation', streamsController.ContainerExists);

// get method to hls streaming file
app.get(
  '/etravel/live/hls/:folder/:filename',
  streamsController.HlsStreamingV2
);

// post method to convert file mp3 to m3u8
app.post('/upload', upload.single('mp3'), streamsController.convertFile);

// delete method to delete container blob
app.delete('/delete', streamsController.RemoveContainer);

app.get('/online', (req, res, next) => {
  const searchedLanguageCode = req.query.languageCode;
  return res
    .status(200)
    .json(
      online.filter(
        (q) => q.languageCode === searchedLanguageCode && q.allowSearch
      )
    );
});

app.get('/self/:userId', (req, res, next) => {
  return { ...online.find((x) => x.id === req.params.userId) };
});
const server = app.listen(PORT, () => {
  console.log(`🚀Example app listening on port ${PORT}`);
});

const io = require('socket.io')(server, {
  //init the server
  cors: {
    origin: '*', //by writing an origin like this, server will only allow requests from localhost:3000
  },
});

io.on('connection', (socket) => {
  socket.on('online', (userData) => {
    const found = online.some((q) => q.id === userData.id);
    if (!found) {
      online.push({ ...userData, socketId: socket.id });
    }
  });

  socket.on('switch', (userData) => {
    const index = online.findIndex((q) => q.id === userData.id);
    if (index < 0) {
      return;
    }
    online[index].allowSearch = userData.allowSearch;
  });

  socket.on('disconnect', () => {
    online = online.filter((q) => q.socketId !== socket.id);
  });

  socket.on('check-in', (checkInData) => {
    const found = online.findIndex((q) => q.socketId === socket.id);
    if (found >= 0) {
      online[found] = {
        ...checkInData,
        socketId: socket.id,
      };
    } else {
      online.push({ ...checkInData, socketId: socket.id });
    }
  });

  socket.on('change-language', (changeData) => {
    const found = online.findIndex((q) => q.id == changeData.id);
    if (found >= 0) {
      online[found].languageCode = changeData.languageCode;
    }
  });
});
