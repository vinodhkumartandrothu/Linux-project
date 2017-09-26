#!/bin/bash

#Shuffling the questions to display randomly

source timer.sh

random=(`shuf -i 1-10 -n  10`)
originalans=(`sed 's/;/ /g' ans.txt`)
total=0
count=1



for (( i=0; i<10; i++ ))
do
clear
            echo -n "($count)"
            cat ./questionbank/question${random[i]}.txt

            echo "Your answer:" 
            count=$(($count+1))
            echo " "
          


            timer & 
            read -t 30 answer
            kill $!
clear

if [[ $answer =~ ^[a-d]+$ ]]
then
          
          echo $answer >> useranswer.txt
          else
          echo -e "Invalid Input Marks awarded will be 0"
          echo 0 >> useranswer.txt
fi
clear
done

#User answer text file renamed with another file to access the data
userans=(`cat useranswer.txt`)

#Declare an array for correct answer
correctans=()

#Comparing the answers with random questions

for (( j=0; j<10; j++ ))
do
            index=${random[j]}

             correctans+=(${originalans[$index-1]})

done

#echo "${correctans[@]}"
#echo "${userans[@]}"
#echo "${index[@]}"
#echo "${random[@]}"


#Comparing the user answer with correct answer

for(( k=0; k<10; k++ ))
do
         if [ "${correctans[k]}" == "${userans[k]}" ]
         then

         total=$(($total+1))
fi
done

         
         if [ $total -ge 5 ]
         then
         echo "                             CONGRATULATIONS YOU HAVE PASSED THE TEST"
         else
         echo "                             YOU HAVE NOT CLEARED THE TEST RETAKE THE TEST AGAIN"
         fi





#Removing the user answer after taking the test 
rm useranswer.txt

echo  The total score is "$total"

#Prompt the user to viwe and retake the test

function pass( )
{

     echo "Please Select your option: "
     echo "1.View test"
     echo "2.Retake test"
     echo "3.Exit"
     echo -n "choice :"
read n


case $n in
	1)	echo "View the test"
		echo                         press v and press Enter to view the test "$v"
		read ans
		if [ "$ans" == "v" ]
		then
		for (( i=0; i<5; i++ ))
		do
		cat ./questionbank/question${random[i]}.txt
		echo "correct answer:"
		echo "${correctans[i]}"
		echo "Your answer:"
		echo "${userans[i]}"
		done
	fi

;;
                2)bash test.sh ;;
                *)exit ;;
                
esac
pass
}
pass











