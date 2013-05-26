apt-get install libcupsys2 samba samba-common
#http://gnomigames.wordpress.com/2011/07/29/install-samba-on-debian-and-connect-with-windows-7/
mkdir /samba
groupadd sambauser
chgrp sambauser /samba
chmod 770 /samba
useradd -g sambauser windowsclient
passwd windowsclient
smbpasswd -a windowslcient
smbpasswd -e windowsclient

