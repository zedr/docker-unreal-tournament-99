# Unreal Tournament '99 on Linux with Docker and Wine

Having trouble running UT99 on modern Linux distributions? Now you can run this
classic game using Docker and Wine, preserving it for future generations!

## Rationale

Wine emulation is the generally preferred [1, 2] way of running UT on Linux. It's easier to setup than the native build and provides a better experience. However, recent versions of Wine for popular Linux distributions (such as Ubuntu Xenial) have dropped support for 32 bit binaries, and getting it back has been a pain in the neck for myself and several other users on the Web, as it involves enabling and maintaing multiarch support.

Dockerising a legacy Wine environment and using it to run UT has the advantage of greatly simplifing the process of getting the game to run across many evolving Linux distributions. The only downside is the size of the resulting Docker image, whichis currently ~1GB (I'm sure it can be halved).

1. https://appdb.winehq.org/objectManager.php?sClass=application&iId=90
2. https://help.ubuntu.com/community/Games/Native/UnrealTournament

## Pre-requisites

 * Docker
 * An installed copy of Unreal Tournament '99 for Windows (e.g. the GOTY)

## Setup

 1. `docker build -t ut99`
 2. If you have UT install in ~/Apps/UnrealTournament, just run `run.sh`, else
    edit the command so that it mounts the directory where you have the game
    installed inside the container.

OpenGL acceleration and sound should be working perfectly. Enjoy!
