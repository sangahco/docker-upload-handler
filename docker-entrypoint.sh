#!/bin/sh
set -e

cp -r /setup /etc/nginx
rm -rf /setup

exec nginx -g 'daemon off;'