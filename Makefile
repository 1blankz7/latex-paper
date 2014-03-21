FILE=paper

all: pdf	

pdf:
	pdflatex $(FILE).tex

bibtex: 
	bibtex $(FILE)

clean:	
	rm *.dvi *.pdf *.log *.aux *.blg 
