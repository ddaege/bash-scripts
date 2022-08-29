#!/bin/bash

echo "Add a number you think is greater than 50"
read number

if [[ $number > 50 ]]
then 
  echo "$number is greater than 50"
else
  echo "$number is NOT greater than 50"
fi
