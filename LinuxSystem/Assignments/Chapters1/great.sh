#!/bin/bash
n=$#
g=0
arr=($@)
for((i=0;i<n;i++))
do
z=${arr[$i]}
if [ $z -gt $g ]
then
 g=${arr[$i]}
fi
done
echo $g

    

