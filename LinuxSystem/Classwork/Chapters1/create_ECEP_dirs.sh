#!/bin/bash
#Create ECEP dir in ~
mkdir ~/ECEP_bak
cd ~/ECEP_bak
#Create dirs for every module
MODULES="LinuxSystem AdvanceC DataStructure LinuxInternals ELARM MicroControllers"
for NAME in $MODULES 
do
mkdir $NAME
mkdir $NAME/Assignments $NAME/Classwork
#Creat chapters in Assignments and Classwork
for i in $(seq 1 6)
do
  mkdir $NAME/Assignments/Chapters${i}
  mkdir $NAME/Classwork/Chapters${i}
  done
done



