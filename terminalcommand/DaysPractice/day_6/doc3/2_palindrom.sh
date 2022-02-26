#!/bin/bash -x

function checkPalindrom(){
	n=$1
	sum=0
	while [ $n -gt 0 ]
	do
		r=$(($n%10));
		sum=$(( $(($sum*10))+$r));
		n=$(($n/10));
	done
echo $sum
}


read -p "enter number 1 to check palindrom: " pal
read -p "enter number 2 to check palindrom: " pal2

temp=$pal2
palResult=$(checkPalindrom $pal );
if [ $temp -eq $palResult ]
then
	echo "$pal is palindrom"
else
	echo "$pal is not a palindrom"
fi
