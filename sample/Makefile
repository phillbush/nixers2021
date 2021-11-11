all: sample.pdf

sample.pdf: macros sample.roff
	troff macros sample.roff | dpost | ps2pdf "-sPAPERSIZE=a4" - sample.pdf

clean:
	-rm sample.pdf

.PHONY: all clean
