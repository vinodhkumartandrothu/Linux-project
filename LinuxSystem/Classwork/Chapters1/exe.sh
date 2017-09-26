#!/bin/bash
if [ $# !=2 ]
then
 echo "Usage: pass 2 argumets"
 exit 0
fi
echo "the arguments of the script u passed are:"
echo "total number of arguments u passed are: $#"
echo "the name of the script is             : $0"
echo "the first argument is                 : $1"
echo "the second argument is                : $2"

