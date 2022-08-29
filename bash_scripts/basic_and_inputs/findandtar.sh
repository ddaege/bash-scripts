#!/bin/bash
clear


echo "Type the name of the file you want to find and tar"
read file
echo
echo
find /root -name "*${file}*" -exec tar -cvf "{}".tgz {} \;
