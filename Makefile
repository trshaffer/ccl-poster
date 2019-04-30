.PHONY: all
all: shrinkwrap.pdf jx.pdf sample.pdf

%.pdf: %.tex beamercolorthemeposter.sty beamerthemeposter.sty nd.png cctools.png
	latexmk -pdf $<

.PHONY: clean
clean:
	latexmk -C
	rm -f *.aux *.fdb_latexmk *.fls *.log *.nav *.out *.pdf *.dvi *.ps *.snm *.toc *.vrb
