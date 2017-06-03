#!/bin/sh

COMMAND=/bin/bash

docker run \
    --rm \
    --privileged \
    -p 7777-7781:7777-7781/udp \
    -p 27900:27900/udp \
    -i -t ut-server
