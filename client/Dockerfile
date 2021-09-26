FROM node:14-alpine as client

WORKDIR /usr/src/app

RUN apk update && apk upgrade
RUN apk add git

COPY ./package.json ./

RUN npm install

COPY ./ ./

RUN npm run build

ENV NODE_ENV production
ENV NUXT_HOST=0.0.0.0
ENV NUXT_PORT 3000

EXPOSE 3000

CMD [ "npm", "start" ]
