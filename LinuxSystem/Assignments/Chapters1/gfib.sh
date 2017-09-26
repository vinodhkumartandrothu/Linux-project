#!/bin/bash
echo enter the value of n
read n
x=0
y=1
for((i=0;i<n;i++))
do
  z=$(($x+$y))
  x=$y
  y=$z
done
echo $y
