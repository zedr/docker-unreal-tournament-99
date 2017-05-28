#!/bin/sh

COMMAND=/bin/bash

xhost + # allow connections to X server
docker run \
    --rm \
    --privileged \
    -e "DISPLAY=unix:0.0" \
    -v="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
    -v ~/Apps/UnrealTournament:/mnt/ut99 \
    -i -t ut99
