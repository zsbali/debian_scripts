#!/bin/sh

# http://blog.phusion.nl/2013/09/11/debian-and-ubuntu-packages-for-phusion-passenger/

gpg --keyserver keyserver.ubuntu.com --recv-keys 561F9B9CAC40B2F7
gpg --armor --export 561F9B9CAC40B2F7 | sudo apt-key add -

sudo apt-get install apt-transport-https -y

echo "deb https://oss-binaries.phusionpassenger.com/apt/passenger wheezy main" > /etc/apt/sources.list.d/passenger.list

sudo chown root: /etc/apt/sources.list.d/passenger.list
sudo chmod 600 /etc/apt/sources.list.d/passenger.list
sudo apt-get update

sudo apt-get install nginx-full passenger

