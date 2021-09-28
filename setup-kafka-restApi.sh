set -e
set -x

################

# echo "*** building kafka-rest api up kafka..."

# # #VERSION=3.4.5
mkdir -p tmp

mkdir -p docker/rest-connector/tmp

echo "*** dowloading rest api  ****"  
git clone https://github.com/llofberg/kafka-connect-rest.git tmp/rest-connector
unzip -o tmp/kafka-connect-rest.zip -d tmp/

# # #cp -r tmp/kafka-connect-rest \

echo "*** installing rest api  ****"  
cd tmp/rest-connector
mvn clean install && \
cd examples/spring/gs-rest-service && \
mvn clean install 
&& \
# # # cd .. && \
# # # cp ../../kafka-connect-rest-plugin/target/kafka-connect-rest-plugin-*-shaded.jar jars/ && \
# # # cp ../../kafka-connect-transform-from-json/kafka-connect-transform-from-json-plugin/target/kafka-connect-transform-from-json-plugin-*-shaded.jar jars/ && \
# # # cp ../../kafka-connect-transform-add-headers/target/kafka-connect-transform-add-headers-*-shaded.jar jars/ && \
# # # cp ../../kafka-connect-transform-velocity-eval/target/kafka-connect-transform-velocity-eval-*-shaded.jar jars/    


###########

################

cp  kafka-connect-rest-plugin/target/kafka-connect-rest-plugin-*-shaded.jar \
        ../../docker/rest-connector/tmp/  && \

cp kafka-connect-transform-velocity-eval/target/kafka-connect-transform-velocity-eval-*-shaded.jar \
        ../../docker/rest-connector/tmp  && \

cp kafka-connect-transform-add-headers/target/kafka-connect-transform-add-headers-*-shaded.jar \
        ../../docker/rest-connector/tmp  && \


cp kafka-connect-transform-from-json/kafka-connect-transform-from-json-plugin/target/kafka-connect-transform-from-json-plugin-*-shaded.jar \
        ../../docker/rest-connector/tmp  

################

################
echo "*** installing installing and copying custom extensions  ****"    
cd custom-extensions


mvn package -f custom-extensions/pom.xml && \
cp custom-extensions/target/custom-extensions-1.0-SNAPSHOT.jar \
       docker/rest-connector/tmp/custom-extensions.jar

echo "*** finisged Installation and setup  ****"

################


