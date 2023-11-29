
#!/bin/awk -f

BEGIN {
    FS = ","
}

{
    # 25th column contains the port number
    port_number = $25

    # increment the count for the specific port number
    count[port_number]++
}

END {
    # print the header
    printf "%-10s %-10s\n", "Port", "Occurrences"

    # print the data for each port
    for (port in count) {
        printf "%-10s %-10d\n", port, count[port]
    }
}
