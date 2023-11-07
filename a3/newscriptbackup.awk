
# Save this code in a file named, for example, myscript.awk
# Usage: awk -F ',' -f myscript.awk input_file.csv

{
    pass = $5
    total = $17
    totalsum[pass] += total
    totalcount[pass] += 1

    if (totalcount[pass] > 1){
	    continue
    }
    else {
	    count +=1
    }
}

END {
        for (pass in totalsum) {
            printf("%.2f, %.2f\t", pass, totalsum[pass] / totalcount[pass])
        }
    }
}
