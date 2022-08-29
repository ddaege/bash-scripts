#!/bin/bash
clear


echo "Type the name of the file you want to find"
read file
echo
echo
find /root -name "*${file}*"
