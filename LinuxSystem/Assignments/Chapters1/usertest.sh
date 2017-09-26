#!/bin/bash
read name
#uname=(`cut -d ':' -f1 /etc/passwd`)
for uname in $(cut -d ':' -f1 /etc/passwd)
do
if [ $name = $uname ]
then 
echo $name user is present
break;
else 
echo $name user not exist
fi
done
