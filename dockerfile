FROM node:12.18.1-alpine

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install --only=production

COPY ./bin ./bin
COPY ./public ./public
COPY ./routes ./routes
COPY ./views ./views
COPY app.js ./

CMD npm start