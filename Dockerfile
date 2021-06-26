# syntax=docker/dockerfile:1
FROM node:latest
WORKDIR /app
COPY package*.json ./
RUN npm install
# If you are building your code for production
# RUN npm ci --only=production
COPY . .
CMD ["node", "src/index.js"]
