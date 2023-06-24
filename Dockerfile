FROM node:18

WORKDIR /app

COPY package.json .

RUN npm i

RUN npm i nodemon --save-dev

COPY . .

EXPOSE 5000

CMD [ "npm","run","dev" ]