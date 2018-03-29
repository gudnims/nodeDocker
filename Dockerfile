FROM node:7
WORKDIR /app
COPY package.json /app
RUN npm install
RUN npm install formidable
RUN npm install fs
COPY . /app
CMD node index.js
RUN node server.js
EXPOSE 3000