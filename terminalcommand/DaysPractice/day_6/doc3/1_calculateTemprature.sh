#!/bin/bash
function calculate_CelciousToFahrenheit() {
	read -p "Enter Celcious" cel
	if [[ $cel -lt 0 || $cel -gt 100 ]]
	then
		echo "Please enter Celcious between 0 to 100 degree";
	else
		nineByFive=`echo 9 5 | awk '{print $1/$2}'`
		fahr=$(($(($cel*$nineByFive))+32))
		echo "$cel Celcious is $fahr Fahrenheit";
	fi
}
function calculate_FahrenheitToCelcious() {
	read -p "Enter Fahrenheit" fah
   if [[ $fah -lt 32 || $fah -gt 212 ]]
   then
      echo "Please enter Fahrenheit between 32 to 212 degree";
   else
	fiveByNine=`echo 5 9 | awk '{print $1/$2}'`
	f_32=`echo $fah 32 | awk '{print $1-$2}'`
	cal=`echo $fiveByNine $f_32 | awk '{print $2*$1}'` 
	echo "cal"$cal
#	cel=$(( $(($fah-32))*$fiveByNine ))
      echo "$fah Fahrenheit is $cel Celcious";
   fi

}

select option in "CelToFahr" "FahrToCel" "exit"
do
case $option in
"CelToFahr")
	echo $( calculate_CelciousToFahrenheit );
;;
"FahrToCel")
	echo $( calculate_FahrenheitToCelcious );
;;
*)
	echo "Exit..";
	exit
;;
esac
done
