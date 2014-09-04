#!/bin/bash

sudo apt-get install alsatools -y
sudo alsactl-init
sudo alsamixer
