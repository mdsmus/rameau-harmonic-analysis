NAME = rameau-harmonic-analysis
USE_DVIPDFM = 1
OTHER_EPS1= $(patsubst %.plot,%.eps,$(wildcard *.plot))
OTHER_EPS2= $(patsubst %.svg,%.eps,$(wildcard *.svg))
OTHER_EPS3= $(patsubst %.dia,%.eps,$(wildcard *.dia))
OTHER+= $(OTHER_EPS1) $(OTHER_EPS2) $(OTHER_EPS3)
CLEAN_FILES+= $(OTHER_EPS1:.plot=.eps)
CLEAN_FILES+= $(OTHER_EPS2:.svg=.eps)

-include /usr/share/latex-mk/latex.gmk

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
