#!/bin/sh
apt-get install build-essential module-assistant -y
m-a prepare
mount /dev/sr3 /media/cdrom
sh /media/cdrom/VBoxLinuxAdditions.run || echo "\nyou have to mount /media/cdrom first!"

