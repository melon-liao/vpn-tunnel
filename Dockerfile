FROM ubuntu

RUN apt update && apt upgrade \
&& apt install -y openfortivpn socat

COPY ./start.sh .

ENTRYPOINT ./start.sh
