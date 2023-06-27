FROM node:18

WORKDIR /app

COPY package.json .

ARG DB

RUN if ["$DB"="mongo"]; then npm i; else npm i --only=production ;fi

COPY . .

EXPOSE 5000