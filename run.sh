#!/bin/sh

docker stop project.local;
docker rm project.local;

docker run -id \
  -h project.local \
  --name project.local \
  --net=my-docker-network --ip=10.10.0.3 \
  -e XDEBUG=0 \
  -e NOMYSQL=0 \
  -v /etc/localtime:/etc/localtime:ro \
  -v ${PWD}/etc/passwd:/etc/passwd:ro \
  -v ${PWD}/etc/group:/etc/group:ro \
  -v ${PWD}/html:/home/bitrix/www:rw \
  -v ${PWD}/mysql:/var/lib/mysql:rw \
  b_bx;
