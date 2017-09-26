#!/bin/bash

#Prompt the user to Sign in 
source color.sh
function pass( )
{
                                                     echo "           WELCOME TO SIGNIN PROCESS"

        echo -e  "$blue $red1 Enter the username $normal $normal1 "
        read username

        echo "Enter the passsword"
        read password

        userfile=(`cat user.txt`)
        b=(`cat pass.txt`)
        c=${#userfile[@]}
        echo $c
flag=0

#Verifying the username and password given by the user

for((i=0;i<$c;i++))
do

              if [ $username == ${userfile[i]} ] && [ $password == ${b[i]} ]
              then

flag=1
              echo -e  "                                      LOGGED IN SUCCESSFULLY WELCOME TO TEST PORTAL"
              echo " "
              echo -e "                                            YOU ARE BEING REDIRECTED TO TEST"
              
cat instructions.txt

              echo " "
              echo -e  "                                         PLEASE PRESS ENTER TO START THE TEST"
              
              read key

                          if [ "$key" == "\n" ]
                            then
         
                               echo "press enter"
                          

                            fi
bash test.sh
fi

done
         


if [ $flag = 0 ]
then
             echo "Incorrect username or already exists"
pass
fi
}
pass
