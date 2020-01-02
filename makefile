all: README.md

README.md: guessinggame.sh
	echo guessing-game > README.md
	date >> README.md
	wc -l guessinggame.sh | awk '{print $$1}' >> README.md

clean:
	rm README.md
