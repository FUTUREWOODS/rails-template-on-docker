#!/bin/sh -eu

sed -i "s/\${PROXY_PASS}/$PROXY_PASS/" /etc/nginx/nginx.conf
exec "$@"
