#!/bin/bash

number=0

while [[ $number -le 10 ]]
do
    echo "Welcome ${number} times"
    (( number++ ))
done
