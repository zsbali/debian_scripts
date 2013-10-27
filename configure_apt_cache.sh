if [ $1 ]
then
    IP=$1
else
    IP="192.168.1.104"
fi
cat > /etc/apt/apt.conf.d/01proxy << EOF
Acquire::http::Proxy "$IP:3142";
EOF
wget -O- "http://$IP:3142"

