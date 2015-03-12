main.pdf: *.tex bib/ref.bib chap/*.tex makefile figures/* CASthesis* 
	xelatex main.tex
	bibtex main
	makeindex main
	xelatex main.tex
	xelatex main.tex
ind: chap/*.tex *.tex
	xelatex main.tex
	makeindex main
	xelatex main.tex

clean:
	rm *.aux *.toc *.bbl *.idx *.ind main.pdf 

