#!/bin/bash

calculate ()
{
	case $2 in
		'+')
			let "res = $1 + $3"
			echo $res
			;;
	
                '-')
                        let "res = $1 - $3"
                        echo $res
			;;
                '*')
                        let "res = $1 * $3"
                        echo $res
			echo $1 $2 $3
			;;
                '/')
                        let "res = $1 / $3"
                        echo $res
			;;
                '%')
                        let "res = $1 % $3"
                        echo $res
			;;
                '**')
                        let "res = $1 ** $3"
                        echo $res
			;;
	esac
}

while true
do
	operations=("+" "-" "*" "/" "%" "**")

	read a b c

	if [[ $a == "exit" ]]
	then
		echo "bye"
		exit
	elif ! [[ " ${operations[@]} " =~ " $b " ]]
	then
		echo "error"
		exit
	else
		echo $a $b #$c
		calculate $a $b $c
	fi

done

