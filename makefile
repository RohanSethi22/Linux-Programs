all: summary.txt readme.txt

summary.txt: txtfiles.txt
	echo "This 'Code' directiry contains the following textfiles - " > summary.txt
	egrep "Code" txtfiles.txt | wc -l >> summary.txt
	egrep "Code" txtfiles.txt >> summary.txt

readme.txt:
	touch readme.txt
	echo "This is my first makefile." >> readme.txt
	echo "It contains all and clean targets too." >> readme.txt
	echo "Should work fine." >> readme.txt

clean:
	rm summary.txt
	rm readme.txt
