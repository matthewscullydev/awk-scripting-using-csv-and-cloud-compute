
# Set terminal type and output file
set terminal pngcairo enhanced font 'Arial,12'
set output 'histogram.png'
set boxwidth 0.4 relative
# Set title and labels
set title 'Top 5 Most Scanned Ports'
set xlabel 'Port Number'
set ylabel 'Occurrences'
set yrange[1005:1015]
# Set style of histogram
set style data histograms
set style fill solid 1.0
set xtics ('42594' 1, '42458' 2, '48244' 3, '38948' 4, '33986' 5)
# Plot the data from the file
plot 'output.dat' using 0:2:($0+1):xtic(1) with boxes lc variable title ""
