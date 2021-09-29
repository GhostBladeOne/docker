#!/bin/bash

docker login --username lend -p $DOCKER_ACCESS_TOKEN


docker-compose -f docker-compose.yml down
docker-compose -f docker-compose.yml up -d