#!/bin/bash

if grep "source ~/debian_scripts/dotfiles/.profile2" ~/.profile;
then echo "";
else echo "source ~/debian_scripts/dotfiles/.profile2" >> ~/.profile ;
fi
