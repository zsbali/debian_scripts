#!/bin/bash

platf=$1

if [[ ($platf != "32") && ($platf != "64") ]]; then
    echo "usage: ./install_java 32|64"
    exit 0
fi

if [ $platf = 32 ]; then
    wget --no-cookies --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com" "http://download.oracle.com/otn-pub/java/jdk/7u51-b13/jdk-7u51-linux-i586.tar.gz" -O /tmp/jdk-7u51-linux-i586.tar.gz --no-check-certificate || exit 0
    sudo mkdir /opt/java-oracle || exit 0
    sudo tar -zxf /tmp/jdk-*-linux-i586.tar.gz -C /opt/java-oracle || exit 0
else
    wget --no-cookies --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com" "http://download.oracle.com/otn-pub/java/jdk/7u51-b13/jdk-7u51-linux-x64.tar.gz" -O /tmp/jdk-7-linux-x64.tar.gz --no-check-certificate || exit 0
    sudo mkdir /opt/java-oracle
    sudo tar -zxf /tmp/jdk-7-linux-x64.tar.gz -C /opt/java-oracle
fi

JHome=/opt/java-oracle/jdk1.7.0_51
sudo update-alternatives --install /usr/bin/java java /bin/java 20000 || exit 0
sudo update-alternatives --install /usr/bin/javac javac /bin/javac 20000 || exit 0
sudo update-alternatives --config java || exit 0
sudo mkdir /opt/google/chrome/plugins || exit 0
sudo ln -sf /opt/java-oracle/jdk1.7.0_51/jre/lib/amd64/libnpjp2.so /opt/google/chrome/plugins/ || exit 0
sudo ln -sf /opt/java-oracle/jdk1.7.0_51/jre/lib/amd64/libnpjp2.so /usr/lib/firefox-addons/plugins/libnpjp2.so || exit 0
