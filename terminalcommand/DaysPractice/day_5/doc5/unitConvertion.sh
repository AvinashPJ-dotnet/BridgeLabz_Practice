#!/bin/bash
read -p "Enter 1:Feet to Inch 2: for Feet to Meter\n 3: Inch to Feet\n 4:Meter to Feet " num
case $num in
1)
	read -p "Enter Feet: " feet
	feetToInch=`echo $feet | awk '{print $1*12}'`
	echo "$feet feet $feetToInch inch"
;;
2)
	read -p "Enter Feet: " feet
   feetToMeter=`echo $feet | awk '{print $1/3.28}'`
   echo "$feet feet $feetToMeter meter"

;;
3)
	read -p "Enter Inch: " inch
   inchToFeet=`echo $inch | awk '{print $1/12}'`
   echo "$inch inch $inchToFeet Feet"

;;
4)
	read -p "Enter Meter: " meter
   meterToFeet=`echo $meter | awk '{print $1*3.28}'`
   echo "$meter meter $meterToFeet feet"

;;
*)
	echo "Invalid option"
;;
esac
