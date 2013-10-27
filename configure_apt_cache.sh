cat > /etc/apt/apt.conf.d/01proxy << EOF
Acquire::http::Proxy "http://192.168.1.104:3142";
EOF
