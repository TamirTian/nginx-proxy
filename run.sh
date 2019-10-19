#!/usr/bin/env sh

if [ ! -n "PROXY_HOST" ] ; then
    echo "Please set PROXY_HOST"
    exit 1
fi

if [ ! -n "PROXY_TARGET" ] ; then
    echo "Please set PROXY_TARGET"
    exit 1
fi

sed -i "s|\${PROXY_HOST}|${PROXY_HOST}|" /etc/nginx/conf.d/default.conf
sed -i "s|\${PROXY_TARGET}|${PROXY_TARGET}|" /etc/nginx/conf.d/default.conf

exec nginx -g 'daemon off;'
