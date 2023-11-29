
#!/bin/awk -f

BEGIN {
    FS = ","
}

{
    # 43rd column contains the software_used
    software_used = $43

    # increment the count for the specific software used
    software_count[software_used]++
}

END {
    # print the header
    printf "%-30s %-10s\n", "Software Used", "Occurrences"

    # print the data for each software
    for (software in software_count) {
        printf "%-30s %-10d\n", software, software_count[software]
    }
}
