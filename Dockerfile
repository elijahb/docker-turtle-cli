FROM node:10.18.1-slim

RUN mkdir -p /usr/share/man/man1 \
  && apt-get update \
  && apt-get install -y \
    openjdk-8-jdk \
    python

WORKDIR /turtle-cli

RUN npm install turtle-cli \
  && npx turtle setup:android --sdk-version 35.0.1
