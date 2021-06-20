# syntax=docker/dockerfile:1

FROM node:latest
ENV NODE_ENV=production
WORKDIR /app
COPY ["package.json", "package-lock.json*", "./"]
COPY ["index.js", "./"]
CMD [ "node", "index.js" ]