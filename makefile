
readme.md: guessing-game.sh
	echo " **TITLE:** guessing-game.sh \n" > readme.md
	echo " **DATE:** " $(shell date +%c) "\n" >> readme.md
	echo " **NUMBER OF LINES**: " $(shell wc -l < guessing-game.sh) >> readme.md
clean:readme.md
	rm readme.md
