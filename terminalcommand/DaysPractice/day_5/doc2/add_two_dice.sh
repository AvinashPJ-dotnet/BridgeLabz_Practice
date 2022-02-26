#!/bin/bash -x
sum_dice=0;
for n in `seq 2`
do
	DICE_NUMBER=$((RANDOM%6+1));
	sum_dice=$(($sum_dice+$DICE_NUMBER));
done
echo "sum of two dice number is: $sum_dice";

