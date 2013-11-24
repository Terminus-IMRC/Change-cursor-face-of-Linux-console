OBJS=Change-cursor-face-of-Linux-console.dvi
SRCS=Change-cursor-face-of-Linux-console.tex
TEX=platex
XDVI=xdvi-ja

all:	$(OBJS)

%.dvi:	%.tex $(SRCS) $(MAKEFILE_LIST)
	latexmk -latex=$(TEX) -dvi $<

%.pdf:	%.dvi
	dvipdfmx $<

view:	$(OBJS)
	$(XDVI) $<

vipdf:	$(shell basename $(OBJS) .dvi).pdf
	xpdf $<

clean:
	$(RM) *.log *.aux *.dvi *.pdf *.toc *.lof *.fdb_latexmk
