#!/bin/sh
apt-get install ruby1.9.1-full -y
alias ruby="ruby1.9.1"
wget http://rubyforge.org/frs/download.php/76073/rubygems-1.8.24.tgz
tar zxvf rubygems-1.8.24.tgz
cd rubygems-1.8.24
ruby setup.rb all
cd ..
ln -T /usr/bin/gem1.9.1 /usr/bin/gem
gem install rubygems-update
