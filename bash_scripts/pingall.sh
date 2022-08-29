#!/bin/bash

hosts = "/home/Bash_scripts/my_hosts"

for ip in $(cat $hosts)
do
	ping -c1 $ip &> /dev/null
	if [ $? -eq 0 ]
	then
	  echo $ip ping passed
	else
	  echo $ip ping failed
	fi
done
