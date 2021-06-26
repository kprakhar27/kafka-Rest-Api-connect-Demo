#!/bin/sh

set -e
set -x

mkdir -p tmp
cd tmp

git clone https://github.com/Landoop/kafka-connect-tools.git
cd kafka-connect-tools
gradle buildCli

#gradlew buildCli
