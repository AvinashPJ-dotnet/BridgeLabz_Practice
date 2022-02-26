#!/bin/bash -x

read -p "enter number:" num
len=`echo ${#num}`
case $len in
1)	
	echo $(($num%10))": is unit."
;;
2)
   echo $(($num%10))": is unit." $(($num%100))": is tens."
;;
3)
   echo $(($num%10))": is unit." $(($num%100))": is tens." $(($num%1000))": is Hundreds."
;;
4)
   echo  $(($num%10))": is unit." $(($num%100))": is tens." $(($num%1000))": is Hundreds." $(($num%10000))": is Thousands."
;;
5)
   echo $(($num%10))": is unit." $(($num%100))": is tens." $(($num%1000))": is Hundreds." $(($num%10000))": is Thousands." $(($num%100000))": is Ten Thousands."
;;
*)
	echo "$num: is more than Ten Thousands"
;;
esac



