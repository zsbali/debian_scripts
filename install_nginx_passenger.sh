#!/bin/sh
gem install passenger
passenger-install-nginx-module --auto --prefix=/opt/nginx --auto-download --language ruby,nodejs | tee passenger_out.txt
ln -s /opt/nginx/sbin/nginx /usr/local/sbin

