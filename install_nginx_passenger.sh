#!/bin/sh
gem install passenger
rvmsudo passenger-install-nginx-module --auto --prefix=/opt/nginx --auto-download --language ruby,nodejs | tee passenger_out.txt
sudo ln -s /opt/nginx/sbin/nginx /usr/local/sbin
sudo ln -s /opt/nginx/sbin/nginx /usr/local/bin
