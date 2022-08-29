#!/bin/bash

# Display the first 3 parameters
# Need to add the parameters after the script

echo "Parameter 1: ${1}"
echo "Parameter 2: ${2}"
echo "Parameter 3: ${3}"

# Loop through all the parameters
# Shift command will delete the first parameter after first loop
# Then it will be replaced with the second parameter and so on
# "$#" will be the amount of parameters

while [[ "${#}" -gt 0 ]]
do
  echo "Number of parameters: ${#}"
  echo "Parameter 1: ${1}"
# echo "Parameter 2: ${2}"
# echo "Parameter 3: ${3}"
  shift
done
