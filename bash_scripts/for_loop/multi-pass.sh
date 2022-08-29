#!/bin/bash

for user_name in "${@}"
do
  password=$(date +%s%N | sha256sum | head -c48)
  echo "${user_name}: ${password}"
done

#Add the name of the people after the script
