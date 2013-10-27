#!/bin/bash
apt-get update
apt-get upgrade
./install_sudo.sh
./install_curl.sh
./install_ruby.sh
source /usr/local/rvm/scripts/rvm
./install_rails.sh
./checkinstall.sh
