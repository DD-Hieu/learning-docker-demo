#base image
FROM node:13-alpine

#make dir volume
RUN mkdir /app

#add all data to volume docker
ADD . /app

WORKDIR /app
CMD node index.js --bind 0.0.0.0:$PORT