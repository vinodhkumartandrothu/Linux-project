#!/bin/bash
echo input the string
read n
sum=0
prod=1
echo length of string
z=${#n}
z=`expr $z-1`
ope=$(echo ${n:$z:1})
var=$(echo ${n:0:$z})
echo $var
echo $ope
case ${ope} in
     +)
       while [ $var -gt 0 ]
       do
       temp=$(($var%10))
       var=$(($var/10))
       sum=$(($temp+$sum))
       done
       echo sum of all digits is $sum;;
     x) 
        while [ $var -gt 0 ]
        do
        temp=$(($var%10))
        var=$(($var/10))
        prod=$(($temp*$prod))
        done
        echo product of all digits is $prod;;
      /)
         while [ $var -gt 0 ]
         do
         temp=$((var%10))
         var=$(($var/10))
         div=$(($temp/$prod))
         done
         echo quotient of all digits is $div;;
      -)
         while [ $var -gt 0 ]
         do
         temp=$((var%10))
         var=$(($var/10))
         sum=$(($temp-$sum))
         done
         echo difference of all digits is $sum;;
esac
 


