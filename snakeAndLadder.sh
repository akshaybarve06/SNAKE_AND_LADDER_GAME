#!/bin/bash -x

# @ Description: Snake And Ladder Problem
# @ Author: Akshay Dhananjay Barve
# @ Version: 18.04.3 lts
# @ Since: 07 March 2020 / Saturday

startPosition=0
endPosition=30
position=0

while [[ $position -lt $endPosition ]]
do
	diceOutput=$((RANDOM%6+1))
	choice=$((RANDOM%3))
	case $choice in
		0)
			# No Play Condition
			if [[ $position -lt 0 ]]
         then
            position=0
         
			fi
			;;
		1)
			# Snake
			if [[ $position -lt 0 ]]
         then
            position=0
         else
            position=$(($position-$diceOutput))
			fi
			;;
		*)
			# ladder
			if [[ $position -lt 0 ]]
			then
				position=0
			else
				position=$(($position+$diceOutput))
			fi
			;;
	esac
done
