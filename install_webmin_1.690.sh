#!/bin/bash
cd ~
wget http://prdownloads.sourceforge.net/webadmin/webmin_1.690_all.deb || exit 0
sudo apt-get install perl libnet-ssleay-perl openssl libauthen-pam-perl libpam-runtime libio-pty-perl apt-show-versions python -y
sudo apt-get -f install -y
sudo dpkg --install ./webmin_1.690_all.deb
