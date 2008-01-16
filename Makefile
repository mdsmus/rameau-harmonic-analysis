NAME = rameau-harmonic-analysis
#CLEAN_FILES+= *.eps
OTHER_EPS= $(notdir $(patsubst %.plot,%.eps,$(wildcard *.plot)))
OTHER+= $(OTHER_EPS)
CLEAN_FILES+= $(OTHER_EPS:.plot=.eps)

-include /usr/share/latex-mk/latex.gmk

%.eps: %.plot %.dat
	gnuplot $<

push: ps
	git push

#icmc.sty:
#	wget http://www.genos.mus.br/~genos/latex/icmc.sty
