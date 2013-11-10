#!/bin/sh
echo "deb http://ftp.us.debian.org/debian sid main" > /etc/apt/sources.list.d/sid.list
apt-get update
apt-get install nodejs -y
