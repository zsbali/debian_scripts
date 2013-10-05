#!/bin/sh
apt-get install mc -y
apt-get install ssh -y
./install_sudo.sh
./install_curl.sh
./update_debian.sh
./install_ruby.sh
./install_rails.sh
./install_rake.sh
./install_nodejs.sh
./install_heroku.sh

