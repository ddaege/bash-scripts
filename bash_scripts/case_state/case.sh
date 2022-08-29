#!/bin/bash
echo

echo Please choose one of the options below:
echo
echo
echo '1 = Display Date and Time'
echo '2 = List file and Directories in /root/Python_scripts'
echo '3 = List users logged in'
echo '4 = Check System uptime'
echo

	read choices

	case $choices in
1) date;;
2) ls -l /root/Python_scripts;;
3) who;;
4) uptime;;
*) echo Invalid choice - Bye.

	esac
