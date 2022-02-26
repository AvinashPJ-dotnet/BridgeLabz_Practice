#!/bin/bash -x

read -p "enter Week number:" num
if [[ $num -lt 1 || $num -gt 7 ]]
then
	echo "Please enter number between 1 - 7";
else
	case $num in
	1)
		echo "MONDAY";
	;;	
	2)
	   echo "TUESDAY";
	;;
	3) [ $num -eq 3 ]
   	echo "WEDNESDAY";
	;;
	4) [ $num -eq 4 ]
   	echo "TURSDAY";
	;;
	5) [ $num -eq 5 ]
   	echo "FRIDAY";
	;;
	6)
   	echo "SATURDAY";
	;;
	*)
   	echo "SUNDAY";
	;;
	esac
fi
