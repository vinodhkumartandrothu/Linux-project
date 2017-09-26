#!/bin/bash
read NAME
arr=(`cut -d ':' -f1 /etc/passwd`)
x=${#arr[@]}
for((i=0;i<=x;i++)) 
do
echo "${arr[$i]}"
if [ $NAME = ${arr[$i]} ] 
then
echo $NAME is present
break;
else
echo $NAME is not present
fi
done
