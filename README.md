# Unreal Tournament '99 on Linux with Docker and Wine

Having trouble running UT99 on modern Linux distributions? Now you can run this
classic game using Docker and Wine, preserving it for future generations!

## Pre-requisites

 * Docker
 * An installed copy of Unreal Tournament '99 for Windows (e.g. the GOTY)

## Setup

 1. `docker build -t ut99`
 2. If you have UT install in ~/Apps/UnrealTournament, just run `run.sh`, else
    edit the command so that it mounts the directory where you have the game
    installed inside the container.

OpenGL acceleration and sound should be working perfectly. Enjoy!
