#!/bin/bash -x

# @ Description: Snake And Ladder Problem
# @ Author: Akshay Dhananjay Barve
# @ Version: 18.04.3 lts
# @ Since: 07 March 2020 / Saturday

startPosition=0
endPosition=100
position=0

function play()
{
while [[ $position -lt $endPosition ]]
do
	diceOutput=$((RANDOM%6+1))
	choice=$((RANDOM%3))

	case $choice in
		0)
			#No Play Condition
			if [[ $position -lt 0 ]]
  			then
				position=$startPosition
			else
      				position=$(($position+0))
			fi
			;;
		1)
			#Snake
			if [[ $position -lt 0 ]]
			then
				position=$startPosition
			else
				position=$(($position-$diceOutput))
			fi
			;;
		2)
			#Ladder
			if [[ $(($endPosition - $position)) -ge $diceOutput ]]
			then
				position=$(($position+$diceOutput))
			else
				position=$(($position+0))
			fi

			;;
		*)
			echo Invalid
			;;
	esac
done
}
play
