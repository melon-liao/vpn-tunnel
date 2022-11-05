#!/bin/bash

./socat.sh

TRUSTED_CERT=`openfortivpn ${HOST}:$PORT -u $USER -p $PASS | awk '$0 ~ /trusted-cert/{print $3;exit}'`

openfortivpn ${HOST}:$PORT -u $USER -p $PASS --trusted-cert $TRUSTED_CERT
