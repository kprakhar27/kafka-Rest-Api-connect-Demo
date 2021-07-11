#!/bin/sh

set -e
set -x

################

echo "*** building kafka-rest api  kafka..."

#VERSION=3.4.5

######################################3
### uncomment out this once
mkdir -p tmp

mkdir -p docker/rest-connector/tmp

# git clone https://github.com/llofberg/kafka-connect-rest.git tmp/rest-connector

cd tmp/rest-connector
# mvn clean install && \
# cd examples/spring/gs-rest-service && \
# mvn clean install 


###########################################
## clean this
# && \
# cd .. && \
# cp ../../kafka-connect-rest-plugin/target/kafka-connect-rest-plugin-*-shaded.jar jars/ && \
# cp ../../kafka-connect-transform-from-json/kafka-connect-transform-from-json-plugin/target/kafka-connect-transform-from-json-plugin-*-shaded.jar jars/ && \
# cp ../../kafka-connect-transform-add-headers/target/kafka-connect-transform-add-headers-*-shaded.jar jars/ && \
# cp ../../kafka-connect-transform-velocity-eval/target/kafka-connect-transform-velocity-eval-*-shaded.jar jars/    

################

echo "*** copying jars to the docker file ..."

# mvn package -f custom-extensions/pom.xml
cp  kafka-connect-rest-plugin/target/kafka-connect-rest-plugin-*-shaded.jar \
        ../../docker/rest-connector/tmp/

cp kafka-connect-transform-velocity-eval/target/kafka-connect-transform-velocity-eval-*-shaded.jar \
        ../../docker/rest-connector/tmp

cp kafka-connect-transform-add-headers/target/kafka-connect-transform-add-headers-*-shaded.jar \
        ../../docker/rest-connector/tmp


cp kafka-connect-transform-from-json/kafka-connect-transform-from-json-plugin/target/kafka-connect-transform-from-json-plugin-*-shaded.jar \
        ../../docker/rest-connector/tmp

################



# cd docker
# docker-compose build
# docker-compose up -d