FROM node:18 as base

FROM base as product

WORKDIR /app

COPY package.json .


RUN npm i --only=production

COPY . .

EXPOSE 5000

FROM base as dev

WORKDIR /app

COPY package.json .


RUN npm i --only=production

COPY . .

EXPOSE 5000