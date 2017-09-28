
readme.md: guessing-game.sh
	echo " **Title:** guessing-game.sh \n" > readme.md
	echo " **Date:** " $(shell date +%c) "\n" >> readme.md
	echo " **Line count:** " $(shell wc -l < guessing-game.sh) >> readme.md
clean:readme.md
	rm readme.md
