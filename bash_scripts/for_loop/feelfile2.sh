#!/bin/bash

files=('im' 'cool' 'guy')
for man in ${files[@]}
do
  touch $man
done
