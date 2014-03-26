#!/bin/sh
ls /media/cdrom/VBoxLinuxAdditions.run || { echo "\n You have to mount 1st!\n" ; exit 1; }
sudo apt-get install build-essential module-assistant -y
sudo m-a prepare
sudo sh /media/cdrom/VBoxLinuxAdditions.run

