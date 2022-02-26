#!/bin/bash -x

read -p "enter single digit number:" num
if [[ $num =~ ^[[:digit:]]{1}$ ]];
then
	case $num in
	0)
		echo "ZERO";
	;;

	1)
		echo "ONE";
	;;
	2)
                echo "TWO";
        ;;

        3)
                echo "THREE";
        ;;
	4)
                echo "FOUR";
        ;;

        5)
                echo "FIVE";
        ;;
	6)
                echo "SIX";
        ;;

        7)
                echo "SEVEN";
        ;;
	8)
                echo "EIGHT";
        ;;

        9)
                echo "NINE";
        ;;
	*)
		echo "enter valid number"
	;;
	esac
else
	echo "enter single digit number"
fi
