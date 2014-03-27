#!/bin/bash

platform=$1

if [[ ($platform != "32") && ($platform != "64") ]]; then
    echo "usage: ./install_java 32|64"
    exit 0
fi

#LINK_32="http://download.oracle.com/otn-pub/java/jdk/7u51-b13/jdk-7u51-linux-i586.tar.gz"
#LINK_64="http://download.oracle.com/otn-pub/java/jdk/7u51-b13/jdk-7u51-linux-x64.tar.gz"
#SAVED_FILE="/tmp/jdk-7u51-linux-i586.tar.gz"
#JHome="/opt/java-oracle/jdk1.7.0_51"
LINK_32="http://download.oracle.com/otn-pub/java/jdk/8/jdk-8-linux-i586.tar.gz"
LINK_64="http://download.oracle.com/otn-pub/java/jdk/8/jdk-8-linux-x64.tar.gz"
SAVED_FILE="/tmp/jdk-8-linux-i586.tar.gz"
JHome="/opt/java-oracle/jdk8"

UNZIP_TO="$JHome/src"

if [ $platform = 32 ]; then
	LINK=$LINK_32
else
	LINK=$LINK_64
fi

if [ ! -f $SAVED_FILE ]; then
	wget --no-check-certificate --no-cookies - --header "Cookie: oraclelicense=accept-securebackup-cookie" $LINK -O $SAVED_FILE --no-check-certificate
fi

if [ ! -d $UNZIP_TO ]; then
	sudo mkdir -p $UNZIP_TO || { echo "mkdir $UNZIP_TO FAILED" ; exit 1; }
fi
    
sudo tar -zxf $SAVED_FILE -C $UNZIP_TO || { echo "unzip FAILED !!!" ; exit 1; }

sudo update-alternatives --install /usr/bin/java java ${JHome%*/}/bin/java 20000 || { echo "FAILED 1" ; exit 1; }
sudo update-alternatives --install /usr/bin/javac javac ${JHome%*/}/bin/javac 20000 || { echo "FAILED 2" ; exit 1; }
sudo update-alternatives --config java || { echo "FAILED 3" ; exit 1; }

echo "SUCCESS!!"
java -version

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

