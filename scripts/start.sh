#!/bin/bash
if [ ! -n "$1" ]; then
    PREX="blj"
else
    PREX=$1
fi

docker ps|grep -vE "NAMES|$PREX"|awk '{print $1}'|xargs docker stop

cd `dirname $0` && docker-compose start php nginx mysql redis mongo
