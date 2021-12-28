#!/bin/sh

cryptogen generate --config crypto-config.yaml --output crypto
configtxgen -configPath . -profile Genesis -channelID system -outputBlock genesis.block
configtxgen -configPath . -profile MyChannel -channelID mychannel -outputCreateChannelTx channel.tx

docker-compose up -d
