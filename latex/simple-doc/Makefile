MAIN=main

main: pdf

figs:
	rm -f img/*.eps
	cd img ; for a in *.pdf ; do echo $$a ;  pdf2ps $$a ; ps2eps `basename $$a .pdf`.ps ; done
	rm -f img/*.ps

latex:
	latex $(MAIN).tex ; bibtex $(MAIN)
	latex $(MAIN).tex ; latex $(MAIN).tex
	dvipdf $(MAIN).dvi

pdf:
	pdflatex --shell-escape $(MAIN).tex ; bibtex $(MAIN) ;\
	pdflatex --shell-escape $(MAIN).tex ; pdflatex --shell-escape $(MAIN).tex ;\
	make finish

finish:
	rm -f *.dvi *.log *.bbl *.blg *.aux *.snm *.out *.nav *.spl

clean: menage
	rm -fr menage *~

