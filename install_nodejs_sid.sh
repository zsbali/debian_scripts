#!/bin/sh
echo "deb http://ftp.us.debian.org/debian sid main" > /etc/apt/sources.list.d/sid.list
sudo apt-get update
sudo apt-get install nodejs -y
