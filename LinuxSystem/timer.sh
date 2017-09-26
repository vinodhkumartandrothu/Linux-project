#!/bin/bash
function timer()
{

count=30
while (( count > 0 ))
do
sleep 1
count=$(($count-1))
echo -ne ":                                                              Time Remaining:$count\033[0K\r"
done
}
