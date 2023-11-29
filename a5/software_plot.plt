
# Set terminal type and output file
set terminal pngcairo enhanced font 'Arial,12'
set output 'histogram2.png'
set boxwidth 0.4 relative
# Set title and labels
set title 'Top 5 Most Used Port Scanning Software'
set xlabel 'Services'
set ylabel 'Occurrences'
set yrange [17750:35000]
# Set style of histogram
set style data histograms
set style fill solid 1.0
set xtics ('zmap' 1, 'nmap_connect' 2, 'nmap_syn' 3, 'unicorn_syn' 4, 'hping_syn' 5)
# Plot the data from the file
plot 'output2.dat' using 0:2:($0+1):xtic(1) with boxes lc variable title ""
