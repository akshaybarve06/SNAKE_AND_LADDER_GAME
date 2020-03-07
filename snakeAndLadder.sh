#!/bin/bash -x

# @ Description: Snake And Ladder Problem
# @ Author: Akshay Dhananjay Barve
# @ Version: 18.04.3 lts
# @ Since: 07 March 2020 / Saturday

startPosition=0
endPosition=100
position=0

	diceOutput=$((RANDOM%6+1))
	choice=$((RANDOM%3))
	case $choice in
		0)
			# No Play Condition
			position=$(($position+0))
			;;
		1)
			# Snake
			position=$(($position-$diceOutput))
			;;
		*)
			# ladder
			position=$(($position+$diceOutput))
			;;
	esac
