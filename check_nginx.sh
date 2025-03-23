#!/bin/bash

PORT=80
ROOT_DIR="/var/www/html"
INDEX_FILE="$ROOT_DIR/index.nginx-debian.html"


nc -z 127.0.0.1 $PORT
if [ $? -ne 0 ]; then
    exit 1
fi


if [ ! -f "$INDEX_FILE" ]; then
    exit 1
fi

exit 0