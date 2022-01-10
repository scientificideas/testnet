#!/bin/sh

DOCKER=docker
TOOLS_IMAGE=hyperledger/fabric-tools

$DOCKER run --rm -v $(pwd):"/home/admin" -w "/home/admin" $TOOLS_IMAGE cryptogen generate --config crypto-config.yaml --output crypto
$DOCKER run --rm -v $(pwd):"/home/admin" -w "/home/admin" $TOOLS_IMAGE configtxgen -configPath . -profile Genesis -channelID system -outputBlock genesis.block
$DOCKER run --rm -v $(pwd):"/home/admin" -w "/home/admin" $TOOLS_IMAGE configtxgen -configPath . -profile MyChannel -channelID mychannel -outputCreateChannelTx channel.tx

docker-compose up -d
