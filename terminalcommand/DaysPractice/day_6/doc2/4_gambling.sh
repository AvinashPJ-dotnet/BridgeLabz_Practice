#!/bin/bash -x
totalAmount=100
wonCount=0
lossCount=0
betCount=0
goalAmount=200
while [ $totalAmount -lt $goalAmount ] 
do
		wonLoss=$((RANDOM%2))
		if [ $wonLoss -eq 1 ]
		then
			totalAmount=$(($totalAmount+1))
			wonCount=$(($wonCount+1))
		else
			totalAmount=$(($totalAmount-1))
			lossCount=$(($lossCount+1))
		fi
		betCount=$(($betCount+1))
done

echo "$wonCount times won";
echo "$lossCount times loss";
echo "total bet $betCount";
echo "total amount $totalAmount ";

