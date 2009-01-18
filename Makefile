NAME = rameau-harmonic-analysis

OTHER += $(LILY_PDF) $(SVG_PDF) $(GNUPLOT_PDF)

#USE_DVIPDFM = 1
USE_PDFLATEX = 1

include ~/.latexmk
