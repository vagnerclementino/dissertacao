set terminal pdf size 8,4 enhanced
set output 'bubble-plot-problema-manutencao.pdf'

set xrange [-5:4]
set yrange [0:5]

set xtics ("Duplicação" 1,"Alocação\nAutomática" 2,"Alocação\nde\nTarefas" 3,"Categorização" -1,"Estimativa\nde\nEsforço" -2,"Visualização\nde\nAtributos" -3,"Monitoramento" -4)
set ytics ("Classificação" 1,"Atribuição" 2,"Resolução" 3,"Visualização" 4)

scale = 1

set yzeroaxis 
 set ytics axis 
 set ytics center

set bmargin 4

set xtics rotate by 0 offset 0,0

circleColor = '#7cb5ec'
textColor = 'black'

set grid

unset key

set multiplot layout 1,1

plot '-' using 1:2:($3*scale) with circles lt rgb circleColor fs solid border rgb circleColor fs transparent solid 0.5, \
 '-' using 1:2:(sprintf("%d",$3)) with labels notitle  textcolor rgb textColor
1 1 0.1
2 2 0.03333333333333333
3 3 0.03333333333333333
-1 1 0.1
-2 1 0.03333333333333333
-3 4 0.03333333333333333
-4 4 0.03333333333333333

EOF
1 1 3
2 2 1
3 3 1
-1 1 3
-2 1 1
-3 4 1
-4 4 1

EOF
        