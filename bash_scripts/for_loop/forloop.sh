#!/bin/bash
clear

echo "Edit these files by april 5th, 2023"
echo


for i in "/etc/passwd" "/etc/skel" "/etc/shadow"
do
  echo "Please check $i and edit the file accordingly"
done
