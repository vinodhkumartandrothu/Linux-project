#!/bin/bash
arr=(`cut -d ':' -f1 /etc/passwd`)
n=()
for i in ${arr[@]}
do
n[i]=${#i}
echo ${n[@]}
done

