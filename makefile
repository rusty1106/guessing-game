README.md:
	echo "# GUESSING GAME" > README.md
	echo "MakeFile RunTime:" >> README.md
	date >> README.md
	echo "\n" >> README.md
	echo "LineCount in GuessingGame Bash File:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
	echo "\n" >> README.md


