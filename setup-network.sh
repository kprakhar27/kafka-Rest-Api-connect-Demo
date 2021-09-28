#!/bin/sh

set -e
set -x


################

echo "*** Creating Docker bridge network..."

NETWORK=connect-demo

docker network create ${NETWORK} || true

################

echo "*** connection bridge established..."

docker run -d --name kafka-rest-demo -p 8091-8094:8091-8094 -p 11210:11210 --network=${NETWORK} \
 confluentinc/cp-enterprise-kafka:5.3.1

