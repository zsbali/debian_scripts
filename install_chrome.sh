#!/bin/bash

platform=$1

if [[ ($platform != "32") && ($platform != "64") ]]; then
    echo "usage: ./install_chrome 32|64"
    exit 1
fi

LINK_32="https://dl.google.com/linux/direct/google-chrome-stable_current_i386.deb"
LINK_64="https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb"
SAVED_FILE="/tmp/google-chrome-stable_current.deb"

if [ $platform = 32 ]; then
	LINK=$LINK_32
else
	LINK=$LINK_64
fi

if [ ! -f $SAVED_FILE ]; then
	wget $LINK -O $SAVED_FILE
fi

sudo apt-get install libxss1 xdg-utils -y
sudo dpkg -i $SAVED_FILE

echo "SUCCESS!!"
