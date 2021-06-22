# syntax=docker/dockerfile:1

FROM node:latest
ENV NODE_ENV=production
WORKDIR /app
COPY package.json /app
RUN npm install
COPY . /app
CMD node index.js