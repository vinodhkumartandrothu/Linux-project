#!/bin/bash
echo enter the value of board n
read x
for((i=0;i<x;i++))
do
  z=$(($x/2))
for((j=0;j<z;j++))
do
  y=$(($i%2))
if [ $y -ne 0 ]
then
  echo -e -n "\033[47m" " "
  echo -e -n "\033[40m" " "
else
  echo -e -n "\033[40m" " "
  echo -e -n "\033[47m" " "
fi
done
  echo -e -n "\033[0m" " "
  echo
done
  echo -e -n "\033[0m" " "

