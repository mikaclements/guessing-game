#!/usr/bin/env bash
#guessinggame.sh
#Prompts user for number of files in ./ and continues to do so until correct response.

guess_equality () {
#Accepts a guess followed by the correct answer, states relationship then returns boolean logic.
	if [ $1 -eq $2 ]; then
                echo Congratulations, you are correct.
                return 1
        elif [ $1 -gt $2 ]; then
                echo Your guess is too large.
        else
                echo Your guess is too small.
        fi
	return 0
}

nfiles=$(ls -l -a | grep -v '^d' | wc -l)
prompt="Please enter the number of files in the directory:"

echo $prompt
read guess

while guess_equality $guess $nfiles; do
	echo $prompt
	read guess
done
