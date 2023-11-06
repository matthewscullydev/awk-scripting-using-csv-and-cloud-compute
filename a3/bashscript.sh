#!/bin/sh

tail -n +2 2019-08.csv | awk -F ',' '$17 != "" { total[$8] += $17; count[$8] += 1 } END { for (loc in total) { avg = total[loc] / count[loc]; printf "%s,%.2f\n", loc, avg } }' | sort -t ',' -k 2,2nr | head -n 10 > a3.txt
