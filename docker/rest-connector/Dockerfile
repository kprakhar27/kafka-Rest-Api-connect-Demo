FROM confluentinc/cp-kafka-connect:5.3.1

# These files are created by "setup-kafka.sh"

COPY tmp/kafka-connect-transform-from-json-plugin-1.0.3-shaded.jar \
     /usr/share/java/kafka-connect-rest/kafka-connect-transform-from-json-plugin-1.0.3-shaded.jar


COPY tmp/kafka-connect-rest-plugin-1.0.3-shaded.jar \
     /usr/share/java/kafka-connect-rest/kafka-connect-rest-plugin-1.0.3-shaded.jar

COPY tmp/kafka-connect-transform-add-headers-1.0.3-shaded.jar \
     /usr/share/java/kafka-connect-rest/kafka-connect-transform-add-headers-1.0.3-shaded.jar

COPY tmp/kafka-connect-transform-velocity-eval-1.0.3-shaded.jar \
     /usr/share/java/kafka-connect-rest/kafka-connect-transform-velocity-eval-1.0.3-shaded.jar

COPY tmp/custom-extensions.jar \
     /usr/share/java/kafka-connect-rest/custom-extensions.jar


