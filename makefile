README.md:
	touch README.md
	echo "# Clare's Unix Course Project" >> README.md
	echo . >> README.md
	echo "This file was created on $$(date)" >> README.md
	echo  >> README.md
	echo "The number of lines of code in guessinggame.sh is" $$(wc -l < guessinggame.sh) >> README.md
