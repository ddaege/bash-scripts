#!/bin/bash
#This script creates new users

if [["${UID}" != 0 ]]
then
  echo "You must be ROOT to execute this script"
  exit 1
fi

if [[ "${?}" -eq 0 ]]
then
  read -p "Enter username you wish to create: "user
  read -p "Enter the name using the account: "name
  read -p "Enter the password: "pass
fi

useradd "${user}" -c "${name}" -m

