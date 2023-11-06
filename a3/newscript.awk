
# Save this code in a file named, for example, myscript.awk
# Usage: awk -F ',' -f myscript.awk input_file.csv

{
    pass = $4
    total = $17
    totalsum[pass] += total
    totalcount[pass] += 1
}

END {
    for (i = 0; i < 7; i++) {
        for (pass in totalsum) {
            printf("%.2f\t", totalsum[pass] / totalcount[pass])
        }
    }
}
