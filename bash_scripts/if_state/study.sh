#!/bin/bash
clear
echo


echo "Do you study Linux enough?"
read answer
echo

if [ "$answer" == yes ]
then
  echo "Are you sure? Try answering again?"

elif [ "$answer" == no ]
then
  echo "At least you're honest."
echo
fi
