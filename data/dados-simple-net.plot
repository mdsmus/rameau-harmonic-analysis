set terminal post enh
set output "data/dados-simple-net.eps"

set xrange [0:24]
set yrange [20:100]

set grid
set xlabel "Hidden units"
set ylabel "Accuracy (%)"


plot "data/dados-simple-net.dat" using 1:2:3 title "Simple-net" with errorlines lw 4
