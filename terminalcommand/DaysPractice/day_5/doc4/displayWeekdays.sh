#!/bin/bash -x

read -p "enter Week number:" num
if [[ $num =~ ^[[:digit:]]{1}$ ]];
then
	if [[ $num -eq 0 || $num -gt 7 ]]
	then
		echo "Please enter number between 1 - 7";
	elif [ $num -eq 1 ]
	then
		echo "MONDAY";
	elif [ $num -eq 2 ]
	then
	   echo "TUESDAY";
	elif [ $num -eq 3 ]
	then
   	echo "WEDNESDAY";
	elif [ $num -eq 4 ]
	then
   	echo "TURSDAY";
	elif [ $num -eq 5 ]
	then
   	echo "FRIDAY";
	elif [ $num -eq 6 ]
	then
   	echo "SATURDAY";
	else
   	echo "SUNDAY";
	fi
else
	echo "Please enter single digit number ";
fi
