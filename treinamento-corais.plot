
set terminal post enh
set output "treinamento-corais.eps"

set xrange [0:17]
set yrange [40:90]

set grid
set xlabel "Training examples"
set ylabel "Accuracy (%)"


plot "treinamento-corais.dat" using 1:2 title "Context-net" with linespoints pt 0 lw 3,  \
     "treinamento-corais.dat" using 1:3 title "Simple-net" with linespoints lt 2 pt 1 lw 3,  \
     "treinamento-corais.dat" using 1:4 title "Mode-net" with linespoints lt 3 pt 2 lw 3,  \
     "treinamento-corais.dat" using 1:5 title "Chord-net" with linespoints lt 4 pt 3 lw 3,  \
     "treinamento-corais.dat" using 1:6 title "Simple-tree" with linespoints lt 5 pt 4 lw 3,  \
     "treinamento-corais.dat" using 1:7 title "Mode-tree" with linespoints lt 6 pt 5 lw 3,  \
     "treinamento-corais.dat" using 1:8 title "Context-tree" with linespoints lt 7 pt 6 lw 3,  \
     "treinamento-corais.dat" using 1:9 title "Chord-tree" with linespoints lt 8 pt 7 lw 3; 
     