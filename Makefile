PAPER = irspec
TEX = $(wildcard *.tex)
BIB = refs.bib
FIGS = $(wildcard figures/*.pdf figures/*.png figures/*.jpg ./*.jpg)
VER = 1.5

.PHONY: all clean

$(PAPER).pdf: $(TEX) $(BIB) $(FIGS)
	echo $(FIGS)
	pdflatex $(PAPER)
	bibtex $(PAPER)
	pdflatex $(PAPER)
	pdflatex $(PAPER)
	cp $(PAPER).pdf $(PAPER).$(VER).pdf
clean:
	rm -f *.aux *.bbl *.blg *.log *.out *.toc *.lof *.lol *.lot *.ver *.hst $(PAPER).pdf $(PAPER).$(VER).pdf
