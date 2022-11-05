# vpn-proxy

## Edit socat.sh
You can write your own socat command in socat.sh which will be executed when the container is started.

## Edit docker-compose.yml
For openfortivpn:
```
environment:
  HOST: <VPN host>
  PORT: <VPN prot>
  USER: <VPN account username>
  PASS: <VPN account password>
```
Expose ports according to the commands that you write in socat.sh.
```
ports:
  - ''
```

## Start container
docker-compose up -d
