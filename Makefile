FILE=paper

all: pdf	

pdf:
	pdflatex $(FILE).tex

bibtex: 
	bibtex $(FILE)

clean:	
	rm paper.dvi paper.pdf *.log *.aux *.blg 
