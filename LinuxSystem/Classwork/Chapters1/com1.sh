#!/bin/bash
echo enter the value of x
read x
echo enter the value of y
read y
echo enter the value of z
read z
if [ $x -gt $y -a $x -gt $z ]
then
echo x is greater
elif [ $y -gt $x -a $y -gt $z ]
then
echo y is greater
else
echo z is greater
fi

