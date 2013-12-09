#!/bin/sh
apt-get install build-essential module-assistant -y
m-a prepare
mount /media/cdrom
sh /media/cdrom/VBoxLinuxAdditions.run

