#!/bin/sh
apt-get update
apt-get upgrade
./install_sudo.sh
./install_curl.sh
./install_ruby.sh
./install_rails.sh
./checkinstall.sh
