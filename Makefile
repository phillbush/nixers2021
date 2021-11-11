.SUFFIXES: .pdf .ps .roff .png .eps

all: slides.pdf

slides.pdf: slides.ps
	ps2pdf '-sPAPERSIZE=letter' slides.ps slides.pdf

slides.ps: slides.roff conf.eps page.eps
	<slides.roff tbl | troff -mpictures p.tmac - | dpost -plandscape >slides.ps

.png.eps:
	convert $< $@

clean:
	-rm slides.pdf slides.ps conf.eps page.eps

.PHONY: all clean
