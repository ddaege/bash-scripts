#!/bin/bash

tar kxzmf jdk-8u2221-linux-x64.tar.gz -C /jdk --checkpoint=.500;
ec=$?

if [ $ec -ne 0 ]; then
    echo "Installation failed -exiting."
    exit 1
fi
