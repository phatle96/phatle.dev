FROM node:20

WORKDIR /usr/src/app

COPY package.json ./
COPY package-lock.json ./

RUN npm install --production

COPY . .

CMD ["node", "index.js"]

EXPOSE 3000