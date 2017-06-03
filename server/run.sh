#!/bin/sh

COMMAND=/bin/bash

docker run \
    -d
    --privileged \
    -p 7777-7781:7777-7781/udp \
    -p 27900:27900/udp \
    -i -t ut-server
