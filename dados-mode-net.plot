set terminal post enh
set output "dados-mode-net.eps"

set xrange [0:80]
set yrange [20:100]

set grid
set xlabel "Hidden units"
set ylabel "Accuracy (%)"


plot "dados-mode-net.dat" using 1:2:3 title "Mode-net" with errorlines
