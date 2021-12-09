#!/bin/sh

docker-compose down
docker rm $(docker ps --filter status=exited -q)
docker volume rm $(docker volume ls -q)

rm -rf crypto
rm -f genesis.block