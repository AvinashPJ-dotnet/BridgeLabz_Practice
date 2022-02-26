#!/bin/bash -x
headsCount=0
tailsCount=0
count=0
times=11
while [ $count -le $times ] 
do
		coinFlip=$((RANDOM%2))
		if [ $coinFlip -eq 1 ]
		then
			headsCount=$(($headsCount+1))
		else
			tailsCount=$(($tailsCount+1))
		fi
		((count++))

done
echo "$headsCount heads";
echo "$tailsCount tails";

