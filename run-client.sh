#!/bin/sh

TAG="mysql"

CONTAINER_ID=$(docker ps | grep $TAG | awk '{print $1}')

IP=$(docker inspect $CONTAINER_ID | python -c 'import json,sys;obj=json.load(sys.stdin);print obj[0]["NetworkSettings"]["IPAddress"]')

# mysql -u root -p -h $IP
mysql -u root -p -h 192.168.99.100

