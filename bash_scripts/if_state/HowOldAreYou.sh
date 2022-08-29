#!/bin/bash


echo
echo "How old are you?"
read age
if [ $age -eq 25 ]
then
  echo "That's a good age."
elif [ $age -gt 25 ]
then
  echo "You are too old."
else
  echo "You are too young."
fi
echo
