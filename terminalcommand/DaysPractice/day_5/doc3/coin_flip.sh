#!/bin/bash -x
randomCoinFlip=$((RANDOM%2));
if [ $randomCoinFlip == 1 ];
then
	echo "Heads";
else
	echo "tails";
fi
