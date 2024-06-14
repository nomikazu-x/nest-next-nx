FROM node:latest as builder

WORKDIR /app/builder
COPY . .
RUN npm i
