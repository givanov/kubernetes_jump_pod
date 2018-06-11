#!/bin/sh

if [ -z "$LOCAL_PORT" ];then
    echo "Local port not set exiting"
    exit 1
fi

if [ -z "$SERVICE_HOST" ]
then
    echo "Service host not set exiting"
    exit 1
fi

if [ -z "$SERVICE_PORT" ]
then
    echo "Service port not set exiting"
    exit 1
fi

cat /usr/local/etc/haproxy/haproxy.cfg
sed -i "s~##LOCAL_PORT##~$LOCAL_PORT~g" /usr/local/etc/haproxy/haproxy.cfg
cat /usr/local/etc/haproxy/haproxy.cfg
sed -i "s~##SERVICE_HOST##~$SERVICE_HOST~g" /usr/local/etc/haproxy/haproxy.cfg
cat /usr/local/etc/haproxy/haproxy.cfg
sed -i "s~##SERVICE_PORT##~$SERVICE_PORT~g" /usr/local/etc/haproxy/haproxy.cfg
cat /usr/local/etc/haproxy/haproxy.cfg
haproxy -f /usr/local/etc/haproxy/haproxy.cfg