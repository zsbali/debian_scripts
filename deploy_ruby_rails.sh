#!/bin/bash
sudo apt-get update
sudo apt-get upgrade
./install_sudo.sh
./install_curl.sh
./install_ruby.sh
source /usr/local/rvm/scripts/rvm
./install_rails.sh

