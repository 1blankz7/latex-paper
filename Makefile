FILE=paper

all: pdf bibtex pdf

pdf:
	pdflatex $(FILE).tex

bibtex: 
	bibtex $(FILE)

clean:	
	rm $(FILE).dvi $(FILE).pdf *.log *.aux *.blg 
