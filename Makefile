TEX= $(wildcard *.tex)
PDF= $(TEX:%.tex=%.pdf)
TEMP= $(TEX:%.tex=%.aux) $(TEX:%.tex=%.log) $(TEX:%.tex=%.nav) $(TEX:%.tex=%.out) $(TEX:%.tex=%.snm) $(TEX:%.tex=%.toc) $(TEX:%.tex=%.vrb)
PDFLATEX_ARGS= -shell-escape

all: $(PDF)
	rm -f $(TEMP)

clean:
	rm -f $(TEMP) $(PDF)

%.pdf: %.tex
	pdflatex $(PDFLATEX_ARGS) $^

.PHONY: all clean
