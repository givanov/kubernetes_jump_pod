FROM haproxy:1.8.9-alpine
COPY haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg
COPY run.sh /