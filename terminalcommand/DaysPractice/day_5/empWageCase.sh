#!/bin/bash

PRESENT=1;
PART_TIME=2;

WAGE_PER_HOUR=20;

isPresent=$((RANDOM%3));

case $isPresent in
	$PRESENT)
		echo "Employee is present.";
		wage=$(($WAGE_PER_HOUR * 8));
	;;

	$PART_TIME)
		echo "Employee is working part time";
		wage=$(($WAGE_PER_HOUR * 4));
	;;

	*)
		echo "Employee is absent.";
		wage=0;
	;;
esac;

echo "Employee wage : $"$wage "USD";
