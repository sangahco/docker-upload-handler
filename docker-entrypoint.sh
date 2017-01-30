#!/bin/sh
set -e

if [ -d "/setup" ]; then
    echo "Copying setup configuration..."
    cp -r /setup/* /etc/nginx
    rm -rf /setup
fi

echo "Starting nginx daemon..."
exec nginx -g 'daemon off;'