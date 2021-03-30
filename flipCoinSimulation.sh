#!/bin/bash -x

num=21
heads=0
tails=0

	while [ $heads -lt $num ] && [ $tails -lt $num ]
	do
		coinFlip=$((RANDOM%2))

	if [ $coinFlip -eq 1 ]
		then ((heads++))
			echo HEADS
							HEADS=$(($heads+1))
		else ((tails++))
			echo TAILS
							TAILS=$(($tails+1))
	fi
done

	if [ $heads -eq $tails ]
	then
			echo "TIE"
	elif [ $heads -gt $tails ]
	then
			echo "HEADS won $heads times"
	else
			echo "TAILS won $tails times"
fi
