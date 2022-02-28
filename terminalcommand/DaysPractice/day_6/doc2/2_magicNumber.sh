#!/bin/bash -x
initNum=100
#isusernumber is yes or no
isUserNumber=0
#usernumber is actual user thinking number
userNumber=0

num=$(($initNum/2))
while [ $isUserNumber -eq 0 ]
do
read -p "is your thinking number is greater then $num or less : y/n:" inp
if [ $inp -eq y ]
then
	divnum=$(($(($initNum+$num))/2))
else
	divnum=$(($num/2))
done
