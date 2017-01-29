#!/bin/sh
set -e

if [ -d "/setup" ]; then
    cp -r /setup /etc/nginx
    rm -rf /setup
fi

exec nginx -g 'daemon off;'