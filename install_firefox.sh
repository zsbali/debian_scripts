#!/bin/bash

if grep "deb http://packages.linuxmint.com debian import" /etc/apt/sources.list;
then echo "";
else sudo sh -c "echo 'deb http://packages.linuxmint.com debian import' >> /etc/apt/sources.list" ;
fi
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 3EE67F3D0FF405B2
sudo apt-get update
sudo apt-get install firefox

