#!/bin/bash

platf=$1

if [[ ($platf != "32") && ($platf != "64") ]]; then
    echo "usage: ./install_java 32|64"
    exit 0
fi

if [ $platf = 32 ]; then
    if [ ! -f /tmp/jdk-*-linux-i586.tar.gz ]; then
        wget --no-check-certificate --no-cookies - --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/7u51-b13/jdk-7u51-linux-i586.tar.gz -O /tmp/jdk-7u51-linux-i586.tar.gz --no-check-certificate || exit 0
    fi

    if [ ! -d /opt/java-oracle ]; then
	sudo mkdir /opt/java-oracle || exit 0
    fi
    
    sudo tar -zxf /tmp/jdk-*-linux-i586.tar.gz -C /opt/java-oracle || exit 0
else
    if [ ! -f /tmp/jdk-*-linux-i586.tar.gz ]; then
        wget --no-check-certificate --no-cookies - --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/7u51-b13/jdk-7u51-linux-x64.tar.gz -O /tmp/jdk-7u51-linux-i586.tar.gz --no-check-certificate || exit 0
    fi

    if [ ! -d /opt/java-oracle ]; then
	sudo mkdir /opt/java-oracle
    fi
    
    sudo tar -zxf /tmp/jdk-*-linux-i586.tar.gz -C /opt/java-oracle || exit 0
fi

JHome=/opt/java-oracle/jdk1.7.0_51
sudo update-alternatives --install /usr/bin/java java ${JHome%*/}/bin/java 20000
sudo update-alternatives --install /usr/bin/javac javac ${JHome%*/}/bin/javac 20000
sudo update-alternatives --config java
#if [ ! -d /opt/google/chrome/plugins ]; then
#    sudo mkdir /opt/google/chrome/plugins || exit 0
#    if [ $platf = 64 ]; then
#	sudo ln -sf /opt/java-oracle/jdk1.7.0_51/jre/lib/amd64/libnpjp2.so /opt/google/chrome/plugins/
#        sudo ln -sf /opt/java-oracle/jdk1.7.0_51/jre/lib/amd64/libnpjp2.so /usr/lib/firefox-addons/plugins/libnpjp2.so
#    fi
#fi

#if [ $platf = 32 ]; then
#    sudo ln -sf /opt/java-oracle/jdk1.7.0_51/jre/lib/i386/libnpjp2.so /opt/google/chrome/plugins/
#    sudo ln -sf /opt/java-oracle/jdk1.7.0_51/jre/lib/i386/libnpjp2.so /usr/lib/firefox-addons/plugins/libnpjp2.so
#fi

