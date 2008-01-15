
set terminal png
set output "treinamento-corais.png"

plot "treinamento-corais.dat" using 1:2 title "Context-net" with lines,  \
     "treinamento-corais.dat" using 1:3 title "Simple-net" with lines lt 2,  \
     "treinamento-corais.dat" using 1:4 title "Mode-net" with lines lt 3,  \
     "treinamento-corais.dat" using 1:5 title "Chord-net" with lines lt 4,  \
     "treinamento-corais.dat" using 1:6 title "Simple-tree" with lines lt 5,  \
     "treinamento-corais.dat" using 1:7 title "Mode-tree" with lines lt 6,  \
     "treinamento-corais.dat" using 1:8 title "Context-tree" with lines lt 7,  \
     "treinamento-corais.dat" using 1:9 title "Chord-tree" with lines lt 8; 
     