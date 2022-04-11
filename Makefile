TEX = pdflatex -interaction nonstopmode
BIB = bibtex

PAPER = template
BIBFILE = publications.bib

TARGETS = $(PAPER).pdf view

all: $(TARGETS)

#view:
#	open $(PAPER).pdf

$(PAPER).pdf: $(PAPER).tex
	$(TEX) $(PAPER).tex
	$(TEX) $(PAPER).tex

.PHONY: clean all view

clean:
	rm -rf *.aux *.log *.bbl *.blg *.xml *.bcf *.toc *.out *.lot *.lof $(PAPER).pdf
