FROM node:14.18.1

RUN mkdir -p /usr/src/app

WORKDIR  /usr/src/app

COPY ./backend/package*.json ./

RUN npm install

COPY ./backend . ./

EXPOSE 3000

ENTRYPOINT ["node", "/usr/src/app/api/dist/main.js"]