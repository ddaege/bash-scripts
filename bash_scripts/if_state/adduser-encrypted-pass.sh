#!/bin/bash

# This script creates a new user on the local system
# You will be prompted to input your username, name of user, and password
# The password will be encrypted
################### SCRIPT WILL NOT RUN IF YOU ARE NOT ROOT ######################


# If you have sudo permission, you will be prompted to input the user information
if [[ $(id -u) -eq 0 ]]
then
  read -p "Enter username: " username
  read -p "Enter the name of the user: " fullname
  read -s -p "Enter password: " password
  echo
# checking to see if the user already exists
  egrep "^$username" /etc/passwd > /dev/null
  if [[ $? -eq 0 ]]
  then
    echo "$username exists!"
    exit 1
# If user doesn't already exist then the user will be created with encrypted password
  else
    pass=$(perl -e 'print crypt($ARGV[0], "password")' $password)
    useradd -m -c "$fullname" -p "$pass" "$username"
    [[ $? -eq 0 ]] && echo "User has been added to the system!" || echo "Failed to add a user!"
  fi
else
  echo "Only root may add a user to the system."
  exit 2
fi
