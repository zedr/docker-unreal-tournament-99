#!/bin/sh

COMMAND=/bin/bash

xhost + # allow connections to X server
docker run \
    --privileged \
    -d \
    -p 7777-7781:7777-7781/udp \
    -p 27900:27900/udp \
    ut-server
