#!/usr/bin/env bash
#guessinggame_project

n=$(ls | wc -l)
function dir_guess {
	read g
	if [[ $g -eq $n ]]
	then
		echo "Congrats!! You guessed it right."
		echo "Keep it up!!!!!!"
		echo "  Now we have ..."
		for f in $(ls)
		do
			echo "  - $f and "
		done
		echo "    ... and that's it."
	else
		if [[ $g -gt $n ]]
		then
			echo "There is less... try again and press Enter :"
			dir_guess
		else
			echo "There is more... try again and press Enter :"
			dir_guess
		fi
	fi
}
echo "Welcome to the guessing game!"
echo "Guess how many files are in the current directory and press Enter(Just Fun Things) :"
dir_guess
