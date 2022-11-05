FROM ubuntu

RUN apt update && apt upgrade \
&& apt install -y openfortivpn socat ssh

COPY ./start.sh .

ENTRYPOINT ./start.sh
