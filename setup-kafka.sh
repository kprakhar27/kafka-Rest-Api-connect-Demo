set -e
set -x


mkdir -p docker

echo "*** Starting the Kafka containers..."

cd docker
docker-compose build
docker-compose up -d
