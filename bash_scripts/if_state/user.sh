#!/bin/bash

if [ "$USER" != 'root' ]; then
    echo "Sorry, you must be ROOT to run this script!"
    exit 1
fi

echo "continue script"
