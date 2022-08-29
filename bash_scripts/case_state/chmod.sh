#!/bin/bash
clear
read -p "Write, in the absolute file path, the name of the file 
:" file
touch $file
echo "choose the permissions you want for $file"
echo
echo 'a = 777'
echo 'b = 775'
echo 'c = 755'
echo
	read choices

	case $choices in
a) chmod 777 $file;;
b) chmod 775 $file;;
c) chmod 755 $file;;
*) echo Invalid choice - Bye.
	esac
