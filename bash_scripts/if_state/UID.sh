#!/bin/bash

if [[ "$UID" -gt 0 ]];
then 
    echo "Sorry, this script must be run as ROOT!" && exit 1
else
    echo "You are root"

fi
echo "Continue script"
