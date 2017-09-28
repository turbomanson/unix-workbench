#!/bin/bash bash
# File: guessinggame.sh

function welcome {
echo "Welcome, guess how many files are there in current directory?"
}

function gamelogic {
nfiles="$(ls -l | wc -l)"

until [[ $response -eq $nfiles ]]; do
	read response
	if [[ $response -gt $nfiles ]]
	then
		echo "$response is too high, guess again"
	elif [[ $response -lt $nfiles ]]
	then
		echo "$response is too low, guess again"
	fi
done
}


function gameover {
echo "You have guessed the right number!!!!"
echo " GAME OVER "
}

welcome
gamelogic
gameover
