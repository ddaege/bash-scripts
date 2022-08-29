#!/bin/bash

# This script deletes any file in the pwd that contains the word linux

for i in *linux*
do
  rm $i
done
