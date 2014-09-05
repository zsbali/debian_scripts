#!/bin/bash

if grep "deb http://http.debian.net/debian wheezy-backports main" /etc/apt/sources.list;
then echo "";
else sudo sh -c "echo 'deb http://http.debian.net/debian wheezy-backports main' >> /etc/apt/sources.list" ;
fi

sudo apt-get update
sudo apt-get -t wheezy-backports install vlc -y
