set terminal post enh
set output "dados-simple-net.eps"

set xrange [0:24]
set yrange [20:100]

set grid
set xlabel "Hidden units"
set ylabel "Accuracy (%)"


plot "dados-simple-net.dat" using 1:2:3 title "Simple-net" with errorlines lt -1
