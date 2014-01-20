#!/bin/bash
sudo apt-get install python g++ make checkinstall
mkdir ~/node_js_src && cd $_
wget -N http://nodejs.org/dist/node-latest.tar.gz
tar xzvf node-latest.tar.gz && cd node-v*
./configure
checkinstall
sudo dpkg -i node_*

