#!/bin/sh

docker-compose down
docker volume rm $(docker volume ls -q)

rm -rf crypto
rm -f genesis.block
rm -f channel.tx
