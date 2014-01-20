#!/bin/sh
ls /media/cdrom/VBoxLinuxAdditions.run || echo "\n You have to mount 1st!\n" && exit 0
apt-get install build-essential module-assistant -y
m-a prepare
sh /media/cdrom/VBoxLinuxAdditions.run

