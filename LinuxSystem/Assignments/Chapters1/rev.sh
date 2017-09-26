#!/bin/bash
echo 
read x
while [ $x -gt 0 ]
do
y=$(($x%10))
echo -n $y
x=$(($x/10))
done
echo 

