#!/bin/sh

set -e
set -x

mkdir -p tmp
cd tmp

git clone https://github.com/lensesio/kafka-connect-tools.git
cd kafka-connect-tools
./gradlew buildCli
