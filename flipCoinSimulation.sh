#!/bin/bash -x

echo Enter number of times coin to flip
read num

heads=0
tails=0

	while [ $heads -le $num ] && [ $tails -le $num ]
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

	echo "HEADS won $heads times"
	echo "TAILS won $tails times"
