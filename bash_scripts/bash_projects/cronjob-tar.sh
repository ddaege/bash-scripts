#!/bin/bash

#This script backups the /root/Bash_scripts on the 1st of the month and incrementally backs up
#changes to the backup file every wednesday 

#rsync everyday for incremental backups
#tar every month for full backups

day=$(date +%a)
file=/home
snar=${file}.snar
tar=${file}.${day}.tgz
first=$(date +%d)
rb=/root/backups
month=${file}.$(date +%m_%Y).tgz

# backups.tgz /home /root/backups/

if [[ ${first} == 01 ]]
then
  echo "Full backup"
  tar -cvzf ${rb}${month} ${file} ${rb}
  echo "Full backup successful"
  ls -l ${rb}${month}
else
  echo "No full backup"
fi

if [[ ! -e ${snar} ]]
then
  tar -cv --verbose --listed-incremental=${snar} --file=/dev/null ${rb}
fi

case ${day} in
	 Mon|Tue|Thu|Fri|Sat|Sun)
		 echo "No incremental backup";;
	 Wed)
		 echo "Starting incremental backup" &&
		 tar -cvz --verbose --listed-incremental=${snar} --file${rb}${tar} ${file} &&
		 echo "Incremental backup successful"
		 ls -l /root/backups/${tar};;
	 *) ;;
esac

#tar -tf the new tgz to see the new changes
