#!/bin/sh
apt-get update -y
apt-get upgrade -y
apt-get install git -y
git clone https://github.com/zsbali/linux_scripts.git
cd linux_scripts
./checkinstall.sh
apt-get install mc -y
./install_sudo.sh
apt-get install ssh -y
./install_curl.sh
./install_ruby.sh
./install_rails.sh
