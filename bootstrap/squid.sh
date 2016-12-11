#!/bin/sh
echo "acl lan src $1\nhttp_access allow lan" >> /usr/local/etc/squid.conf
echo "
refresh_pattern -i \.(gif|png|jpe?g|tif?f|bmp)$ 1440 25% 10080
refresh_pattern -i \.(mpe?g|avi|ra?m|wmv|mov)$ 1440 25% 10080
refresh_pattern -i \.(wav|mp3|mid)$ 1440 25% 10080
refresh_pattern -i \.(class|swf|pdf)$ 1440 25% 10080
refresh_pattern -i \.(js|css)$ 1440 25% 10080
refresh_pattern . 45 20% 4320
dns_nameservers 192.168.1.1 192.168.1.2
" >> /usr/local/etc/squid.conf
