readme : guessinggame.sh
	touch README.md
	echo "Title of the project:The Unix Workbench Project Guessing Game" > README.md
	echo "\nDate make ran at:" >> README.md
	date >> README.md
	echo "\nNumber of lines contained by file guessinggame.sh:" >> README.md
	cat guessinggame.sh | wc -l >> README.md
