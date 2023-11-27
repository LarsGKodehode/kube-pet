FROM node:20-alpine as build-base
WORKDIR /app
COPY tsconfig*.json /app/
COPY vite.config.ts /app/
COPY package*.json /app/
RUN npm clean-install

FROM node:20-alpine as builder
WORKDIR /app
COPY --from=build-base /app/ /app/
COPY ./public /app/public/
COPY ./src /app/src/
COPY ./index.html /app/index.html

RUN npm run build

FROM joseluisq/static-web-server:2 as production
COPY --chown=1000 --from=builder /app/dist /public