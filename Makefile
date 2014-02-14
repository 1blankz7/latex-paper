all:	
	pdflatex paper.tex

bibtex: 
	bibtex paper

clean:	
	rm paper.dvi paper.pdf *.log *.aux *.blg 
