#!/bin/bash -x

read -p "enter number:" num
if [[ $num =~ ^[[:digit:]]{1}$ ]];
then
	echo  "$num is unit"
elif [[ $num =~ ^[[:digit:]]{2}$ ]];
then
	 echo  "$num is tens"
elif [[ $num =~ ^[[:digit:]]{3}$ ]];
then
         echo  "$num is hundreds"
elif [[ $num =~ ^[[:digit:]]{4}$ ]];
then
         echo  "$num is thousands"
elif [[ $num =~ ^[[:digit:]]{5}$ ]];
then
         echo  "$num is ten thousands"
elif [[ $num =~ ^[[:digit:]]{6}$ ]];
then
         echo  "$num is lacks"


else
	echo "Please enter digit between 1 - 100000";
fi
