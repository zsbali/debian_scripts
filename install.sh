if [ "$1" = ruby ]; then
    echo "installing ruby..."
fi

if [ "$1" = rails ]; then
    echo "installing rails..."
fi

if [ "$1" = curl ]; then
    apt-get install curl -y
fi