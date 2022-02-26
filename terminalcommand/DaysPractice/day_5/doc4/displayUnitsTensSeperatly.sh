#!/bin/bash -x

read -p "enter number:" num
len=`echo ${#num}`
if [ $len -eq 1 ]
then
	echo $(($num%10))": is unit."
elif [ $len -eq 2 ]
then
   echo $(($num%10))": is unit." $(($num%100))": is tens."
elif [ $len -eq 3 ]
then
   echo $(($num%10))": is unit." $(($num%100))": is tens." $(($num%1000))": is Hundreds."
elif [ $len -eq 4 ]
then
   echo  $(($num%10))": is unit." $(($num%100))": is tens." $(($num%1000))": is Hundreds." $(($num%10000))": is Thousands."
elif [ $len -eq 5 ]
then
   echo $(($num%10))": is unit." $(($num%100))": is tens." $(($num%1000))": is Hundreds." $(($num%10000))": is Thousands." $(($num%100000))": is Ten Thousands."
else
	echo "$num: is more than Ten Thousands"
fi



