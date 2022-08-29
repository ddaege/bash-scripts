#!/bin/bash

hosts = "192.168.1.235"
ping -c1 $hosts &> /dev/null
	if [ $? -eq 0 ]
	then
	  echo $hosts is OK
	else
	  echo $hosts is NOT OK
	fi
