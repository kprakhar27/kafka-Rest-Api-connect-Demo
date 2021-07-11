FROM confluentinc/cp-kafka-connect:5.3.1

# These files are created by "setup-kafka.sh"

COPY tmp/kafka-connect-rest \
     /usr/share/java/kafka-connect-couchbase/kafka-connect-couchbase.jar

COPY tmp/custom-extensions.jar \
     /usr/share/java/kafka-connect-couchbase/custom-extensions.jar


