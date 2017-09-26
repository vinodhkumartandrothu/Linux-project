#!/bin/bash
                                          echo "                                  WELCOME TO SIGNUP PROCESS"

       #Prompt the user to enter the username
function user( )
{


    echo "please enter the username"
    read username
    flag=1
    userfile=(`cat user.txt`)
      
for((i=1;i<${#userfile};i++))
      do
     
      if [ "$username" == "${userfile[i]}" ]
      then
              flag=0
              break;     
 
      fi       
          
done

   #Verifying the username if it is already exists or not
  
if [ $flag -eq 0 ]
          then
          echo "username already exists"
user

fi

echo $username >>user.txt
}
user


#prompt the user to enter the password


function pass( )
{
    echo "Please enter the password"
    read   password

if [ ${#password} -ge 8 ]
then
         	if ! [[ $password =~ ^[a-zA-Z0-9]+$ ]]
	        then
          		echo "Password is valid"
	
                  else 

	            echo "Enter the password again.It should consist of 8 characters and it should include numbers alphabets and special characters"
pass
                fi	

                   else

                   echo "Password is weak it should consist of mininmum 8 characters including alphabets numbers and special characters"
pass
                fi

echo $password >>pass.txt
}
pass


#Prompt the user to confirm the password

function pass0( )
{
      echo "Enter to confirm password"

      read password1

   if [ "$password" == "$password1" ]
   then
               
              if [ ${#password1} -ge 0 ]
              then 
              echo "Password is matching"
              else
              echo "Password is invalid"   

fi
       else  
       echo "Password is mismatching.Enter the password again"


pass0
fi
}
pass0


#prompt the user to enter the email id

function pass1 ( )
{
   echo "Please enter the Email"
   read Email    
   
   if  [[ $Email =~ .@.*\.[a-zA-Z0-9]+ ]]
   then
   
            if [ ${#Email} -ge 0 ]
            then
            echo "Email  is  valid"
bash signin.sh

            else
            echo "Email  is invalid"
pass1
             fi
                   else
                   echo "Email is invalid"
pass1
fi
}
pass1

