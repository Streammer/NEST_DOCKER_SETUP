FROM node:latest

WORKDIR /app

RUN npm install -g nodemon

COPY package.json .
COPY package-lock.json .

RUN npm install

COPY . .

EXPOSE 3000

CMD ["npm", "run", "start:dev"]
