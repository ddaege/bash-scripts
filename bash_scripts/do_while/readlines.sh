#!/bin/bash

head -n 5 /etc/passwd | while read line; do
   echo $line
done
