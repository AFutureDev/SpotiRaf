FROM node:14-alpine

WORKDIR /app

RUN apk update && apk add curl python && rm -rf /var/cache/apk/*

COPY package.json ./
RUN npm install

COPY . .

ENTRYPOINT [ "node",  "server.js" ]