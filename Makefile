NAME = rameau-harmonic-analysis
USE_DVIPDFM = 1

FIGSDIR = figs
DATADIR = data

OTHER_EPS1= $(patsubst %.dia,%.eps,$(wildcard $(FIGSDIR)/*.dia))
OTHER_EPS2= $(patsubst %.svg,%.eps,$(wildcard $(FIGSDIR)/*.svg))
OTHER_EPS3= $(patsubst %.plot,%.eps,$(wildcard $(DATADIR)/*.plot))
OTHER+= $(OTHER_EPS1) $(OTHER_EPS2) $(OTHER_EPS3)
CLEAN_FILES+= $(OTHER_EPS2:.plot=.eps)
CLEAN_FILES+= $(OTHER_EPS3:.svg=.eps)
CLEAN_FILES+= da.* 1.tex 2.tex

-include /usr/share/latex-mk/latex.gmk

diff:
	git show HEAD^:rameau-harmonic-analysis.tex > 1.tex
	git show HEAD:rameau-harmonic-analysis.tex > 2.tex
	latexdiff-so 1.tex 2.tex > da.tex
	latex da.tex
	bibtex da
	latex da.tex
	latex da.tex

%.txt: %.tex
	detex $< > $@

%.eps: %.plot %.dat
	gnuplot $<

%.eps: %.svg
	inkscape -T --export-eps=$@ $<

%.eps: %.dia
	dia --export=$@ $<

push: ps
	git push

#icmc.sty:
#	wget http://www.genos.mus.br/~genos/latex/icmc.sty
