FROM node:14.11-buster-slim

ENV APP_ROOT /src

WORKDIR ${APP_ROOT}
COPY ./app/package*.json ${APP_ROOT}

RUN npm install
RUN npm run build

ENV HOST 0.0.0.0