#!/bin/bash

enp=/root/bash_projects/enp0s3-2 

grep dhcp enp| sed 's/dhcp/static/' $enp

cat << EOF >> $enp

IPADDR=192.168.1.1
NETMASK=255.255.255.0
GATEWAY=192.168.1.1
DNS1=192.168.1.1

EOF

ln -s $enp /root/enp0s3-3
