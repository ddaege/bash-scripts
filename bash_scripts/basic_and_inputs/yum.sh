#!/bin/bash

read -p "Write the name of the package you want to install:
" package

yum install -y $package > /dev/null
