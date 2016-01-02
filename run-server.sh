#!/bin/sh

docker run -d -p 3306:3306 --name=gd452.mysql -e MYSQL_ROOT_PASSWORD=root gd452/mysql

