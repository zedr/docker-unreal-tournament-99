#!/bin/sh

COMMAND=/bin/bash

docker run \
    --rm \
    --privileged \
    -p 7777-7781:7777-7781/udp \
    -p 27900:27900/udp \
    -e "DISPLAY=unix:0.0" \
    -v="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
    -v ~/Apps/UnrealTournament:/mnt/ut99 \
    -i -t ut-server
