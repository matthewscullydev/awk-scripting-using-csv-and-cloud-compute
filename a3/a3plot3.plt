set border 2 front lt black linewidth 1.000 dashtype solid
set boxwidth 0.5 absolute
set style fill solid 0.50
unset key
set pointsize 0.5

set datafile separator '\t'

set terminal pngcairo
set out 'a3t3.svg'

/* set style data boxplot
set xticks passengers
set yticks tip amount
set autoscale y

plot 'box.dat' using 1:2
