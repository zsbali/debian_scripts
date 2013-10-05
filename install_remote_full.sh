#!/bin/sh
apt-get install sudo -y
apt-get install mc -y
curl https://raw.github.com/zsbali/linux_scripts/master/update_debian.sh | sh
curl https://raw.github.com/zsbali/linux_scripts/master/install_ruby.sh | sh
curl https://raw.github.com/zsbali/linux_scripts/master/install_rails.sh | sh
curl https://raw.github.com/zsbali/linux_scripts/master/install_rake.sh | sh
curl https://raw.github.com/zsbali/linux_scripts/master/install_pgsql.sh | sh
curl https://raw.github.com/zsbali/linux_scripts/master/install_nodejs.sh | sh

