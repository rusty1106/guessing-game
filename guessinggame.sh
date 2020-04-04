#!/usr/bin/env bash
# File: guessinggame.sh


function check_response (){
	if [[ $1 -eq $2 ]]
	then
		let exit=$exit+1
		echo Congratulations! Good Guess...
	elif [[ $1 -lt $2 ]]
	then
		echo Guess is higher
	elif [[ $1 -gt $2 ]]
	then
		echo Guess is lower
	else
		echo Unknown Response
	fi
}


num_total=$(ls -p | wc -l)
num_dir=$(ls -d */ | wc -l)
num_files=$((num_total - num_dir))

exit=0

echo "Guess the number of files in current directory"
while [[ $exit -eq 0 ]]
do
	read response
	check_response $num_files $response $exit
done
