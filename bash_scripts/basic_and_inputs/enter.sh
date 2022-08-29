#!/bin/bash
clear
echo

echo "Enter the name of the new file"
read file
echo
touch $file
cat << EOF >> $file
# "welcome to $file"
# I was created by $USER
$(chown $USER:$USER $file)
EOF
