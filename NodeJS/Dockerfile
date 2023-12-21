FROM node:18-alpine
WORKDIR /usr/src/app
COPY . .
RUN npm install
COPY src src
CMD [ "node", "src/app.js"]


