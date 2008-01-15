NAME = rameau-harmonic-analysis
-include /usr/share/latex-mk/latex.gmk

plotfiles = $(wildcard *.plot)
datfiles = $(wildcard *.dat)
epsfiles = $(notdir $(patsubst %.plot,%.eps,$(plotfiles)))

ps: epsfiles

epsfiles: $(epsfiles)

%.eps: plotfiles datfiles
	gnuplot *plot

default: ps

push: ps
	git push

#icmc.sty:
#	wget http://www.genos.mus.br/~genos/latex/icmc.sty
