#!/bin/sh

COMMAND=/bin/bash

docker run \
    -d \
    --privileged \
    -p 7777-7781:7777-7781/udp \
    -p 8777-8778:8777-8778/udp \
    -p 27900:27900/udp \
    -p 9999:9999 \
    -i -t ut-server
