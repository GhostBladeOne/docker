#!/bin/bash

docker login --username lend -p $DOCKER_ACCESS_TOKEN

docker stop spapi  spweb  sptask spinfo
docker rm -f spapi  spweb  sptask spinfo

docker rmi -f coinflow/bsc-sp-swap-web:latest  
docker rmi -f  coinflow/bsc-sp-web-api:latest
docker rmi -f coinflow/sp-info:latest
docker rmi -f  coinflow/bsc-sp-web-task:latest
docker-compose  -f  docker-compose.yml  pull spapi spweb sptask spinfo

docker-compose -f docker-compose.yml down
docker-compose -f docker-compose.yml up -d