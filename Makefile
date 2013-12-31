all:	
	pdflatex paper.tex

bibtex: 
	bibtex paper

clean:	
	rm *.dvi *.pdf *.log *.aux *.blg 
