set terminal post enh
set output "dados-chord-net.eps"

set xrange [0:80]
set yrange [20:100]

set grid
set xlabel "Hidden units"
set ylabel "Accuracy (%)"


plot "dados-chord-net.dat" using 1:2:3 title "Chord-net" with errorlines lt -1
