#!/bin/bash

# Script creates new users on the system
# You must supply a username as an arguement to the script
# Please provide a comment for the account as well
# A password will be automatically generated for the account
# Add user and comment after the script

# Make sure the script is being executed by ROOT
if [[ "${UID}" -ne 0 ]]
then 
  echo "You must be ROOT"
  exit 1
fi

# If they do not supply at least one arguement, then give them help
if [[ "${#}" -lt 1 ]]
then
  echo "Usage: ${0} user_name [comment]..."
  echo "Create an account with the name of user_name and a comment in comment field"
  exit 1
fi

# The first parameter is the user name
user_name="${1}"

# The rest of the parameters are for the account
shift
comment="${@}"

# Generate a password
password=$(date +%s%N | sha256sum | head -c10)

# Generate the user with the password
useradd -c "${comment}" -m ${user_name}

# Check to see if the useradd command succeeded
# Won't say user has been created if it wasn't
if [[ "${?}" -ne 0 ]]
then
  echo "The account could not be created"
  exit 1
fi

# Set the password
echo ${password} | passwd --stdin ${user_name}

if [[ "${?}" -ne 0 ]]
then 
  echo "Password could not be created"
  exit 1
fi

# Force password change on first login
passwd -e ${user_name}

# Display username and password
echo
echo "username:"
echo "${user_name}"
echo "password:"
echo "${password}"
exit 0
