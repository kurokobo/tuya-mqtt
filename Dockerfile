FROM node:13.5

ENV DEBUG=*

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

CMD [ "node", "tuya-mqtt.js" ]