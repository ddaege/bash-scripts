#!/bin/bash
echo 'I am root'
echo
read -p "Please tell root your exam score:" score

if [ $score -eq 100 ]
then
  echo "Great job! You passed"
else
  echo "Sorry, you failed. Better luck next time :( "
fi
echo
