TEX = pdflatex -interaction nonstopmode
BIB = bibtex

PAPER = template
BIBFILE = publications.bib

TARGETS = $(PAPER).pdf view

all: $(TARGETS)

view:
	open $(PAPER).pdf

$(PAPER).pdf: $(PAPER).tex $(PAPER).bbl
	$(TEX) $(PAPER).tex
	$(TEX) $(PAPER).tex

$(PAPER).bbl: $(PAPER).tex $(BIBFILE)
	$(TEX) $(PAPER).tex
	$(BIB) $(PAPER).aux


.PHONY: clean all view

clean:
	rm -rf *.aux *.log *.bbl *.blg *.xml *.bcf *.toc *.out *.lot *.lof $(PAPER).pdf
