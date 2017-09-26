#!/bin/bash
echo enter the value of x
read x
a=0
y=${#x}
echo $y
z=$(($y-1))
a=${x:$z:1} a=+
b=${x:0:$z}
echo $a
for((i=0;i<=$z;i++))
do
  c=$(( $b % 10 ))
  d=$(( $c $a $e
