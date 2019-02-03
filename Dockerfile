FROM node:10.15.0-stretch

COPY ./package-lock.json /app/package-lock.json
COPY ./package.json /app/package.json

WORKDIR /app
RUN npm install

COPY ./ /app

CMD npm run start
