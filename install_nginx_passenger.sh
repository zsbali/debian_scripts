#!/bin/sh
gem install passenger
passenger-install-nginx-module | tee passenger_out.txt
