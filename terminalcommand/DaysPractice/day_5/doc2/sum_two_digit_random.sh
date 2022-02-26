#!/bin/bash -x
read -p "enter the number for generate two random no: " n

sum_of_rand=0;
for n in `seq $n`
do
	TWO_DIGI_NUMBER=$((RANDOM%90+10));
	sum_of_rand=$(($sum_of_rand+$TWO_DIGI_NUMBER));
	average=`echo $sum_of_rand $n | awk '{print $1/$2}'`
done
echo "$n two digit random number sum is:$sum_of_rand";
echo "avarage is: $average";

