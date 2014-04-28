FILE=paper

all: pdf

pdf: $(FILE).pdf

$(FILE).pdf:
	pdflatex $(FILE)
	#makeindex $(FILE).idx
	pdflatex $(FILE)
	latex_count=5 ; \
	# from doxygen latex template
	while egrep -s 'Rerun (LaTeX|to get cross-references right)' $(FILE).log && [ $$latex_count -gt 0 ] ;\
	    do \
	      echo "Rerunning latex...." ;\
	      pdflatex $(FILE) ;\
	      latex_count=`expr $$latex_count - 1` ;\
	    done
	#makeindex $(FILE).idx
	pdflatex $(FILE)

bibtex:
	bibtex $(FILE)

clean:	
	rm -f $(FILE).snm $(FILE).toc $(FILE).nav $(FILE).out
	rm -f *.ps *.dvi *.aux *.toc *.idx *.ind *.ilg *.log *.out *.brf *.blg *.bbl $(FILE).pdf
