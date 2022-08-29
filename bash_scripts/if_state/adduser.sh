#!/bin/bash
#This script creates a new user on the local system
#You will be prompted to enter the username, person's name, and password
#The information will then be displayed
################ IF YOU ARE NOT ROOT, THIS SCRIPT WONT RUN ###################

#Make sure the script is being executed with superuser
if [[ $UID != 0 ]]
then 
  echo
  echo "You do not have permission to run this script"
  echo "Exiting now"
  sleep 2
  echo "Good Bye."
  echo
  exit 1
fi

#Get the username
echo "Please write the username you want to make: "
read nuser

#Get the real name (contents for the description field)
echo "What is the name of the person using the account: "
read comment

#Get the password
echo "What is the password of the user? "
read pass

#Create the account
useradd -c "${comment}" -m ${nuser}

#Check to see if the useradd command succeeded
if [[ $? != 0 ]]
then 
  echo "Account could not be created"
  exit 1
fi

#Set the password
echo ${pass} | passwd --stdin ${nuser}

#Check to see if the password command succeeded
if [[ $? != 0 ]]
then
  echo "Password could not be created"
  exit 1
fi

#Force password change on first login
passwd -e ${nuser}

#Check /etc/passwd to see if account was created
echo
echo "Checking /etc/passwd to see if account was fully created"
tail -1 /etc/passwd 
echo

#Display the username, password, and the host where the user was created
echo
echo "username: ${nuser}"
echo "password: ${pass}"
echo "host: ${HOSTNAME}"
echo "This information is being sent to ${nuser}'s home directory, in a file called 'userinfo.txt'."
echo

#Sending user info to a file in their home directory
cat << EOF >> /home/$nuser/userinfo.txt
The username of this account is ${nuser}.
The password of the account is ${pass}.
The host is ${HOSTNAME}.
EOF

exit 0
