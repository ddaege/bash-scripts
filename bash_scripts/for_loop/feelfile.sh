#!/bin/bash
echo
echo

x=$(touch stuff {1..5})
for i in $x
do
  echo $i
done
