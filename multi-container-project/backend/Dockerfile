FROM node:14

WORKDIR /app

COPY package.json .

RUN npm install

COPY . /app

EXPOSE 80

ENV MONGODB_USERNAME=root

ENV MONGODB_PASSWORD=secret

CMD ["npm", "start"]