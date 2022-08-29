#!/bin/bash

now=$(date +%a)

case $now in
	Mon)
		echo "Full backup";;
	Tue|Wed|Thu|Fri)
		echo "Partial backup";;
	Sat|Sun)
		echo "No backup";;
	*) ;;
esac
										
