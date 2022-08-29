#!/bin/bash

read -p "How old are you?" age

if (( $age >= 22 && $age <= 40 ))
then
  echo "You're hot ;)"
else 
  echo "you're ugly"
fi
