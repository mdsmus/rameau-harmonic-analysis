set terminal post enh
set output "data/dados-context-net.eps"

set xrange [0:40]
set yrange [20:100]

set grid
set xlabel "Hidden units"
set ylabel "Accuracy (%)"


plot "data/dados-context-net.dat" using 1:2:3 title "Context-net" with errorlines lw 4
