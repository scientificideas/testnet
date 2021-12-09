#!/bin/sh

cryptogen generate --config crypto-config.yaml --output crypto
configtxgen -configPath . -profile Genesis -channelID system -outputBlock genesis.block

docker-compose up -d