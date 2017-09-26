#!/bin/bash
echo enter the value of n
read n
k=1
for((i=1;i<=n;i++))
do
for((j=1;j<=i;j++))
do 
echo -n $k
let k++
done
echo
done


