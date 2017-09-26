#!/bin/bash
#Prompt the user to select the options
function pass()
{

                       echo -e "                            PLEASE SIGNUP IF YOU ARE NOT REGISTERED USER FOR TAKING TEST"
                       echo " "
                       echo -e  "                              PLEASE SIGNIN IF YOU ARE A REGISTERED USER"


     echo "Please choose the below options: "
     echo "1.Sign in"
     echo "2.Sign up"
     echo "3.Exit"

     echo -n "choice: "
     read choice




case $choice in
    1)bash signin.sh
     ;;
    2)bash signup.sh;;

    3)exit;;

    *)echo "Please give valid input";;

esac
pass
}
pass

