#!/bin/sh

set -x

docker-compose -f docker/docker-compose.yml down -v

docker stop kafka-rest-demo
docker rm kafka-rest-demo

docker network rm connect-demo
