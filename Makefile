NAME = rameau-harmonic-analysis
-include /usr/share/latex-mk/latex.gmk

default: ps icmc.sty

push: ps
	git push

ps: icmc.sty

icmc.sty:
	wget http://www.genos.mus.br/~genos/latex/icmc.sty
