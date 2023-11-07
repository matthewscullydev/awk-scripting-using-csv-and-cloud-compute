#!/usr/local/bin/gnuplot -persist
set style fill transparent solid 0.2 noborder
set datafile separator ','

set terminal svg 
set out 'a3t4.svg'

set title "Scatterplot correlation for distance travelled and total amount spent"

set xlabel "distance travelled"
set ylabel "total amount spent"
set xrange [1:200]
set yrange [1:900]
set autoscale x
set autoscale y

plot 'a3scatter.dat' using 1:2 with circles lc rgb 'red'
