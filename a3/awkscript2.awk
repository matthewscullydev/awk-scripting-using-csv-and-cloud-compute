
#!/usr/bin/awk -f
BEGIN {
    FS = ","
}

NR > 1 && $17 != "" {
    location_pair = $8
    total_amount[location_pair] += $17
    count[location_pair] += 1
}

END {
    printf "Top 10 Pickup Locations and Their Average Total Amount in August 2019:\n"
    printf "---------------------------------------------------------------\n"

    # Create an array of location pairs
    for (pair in total_amount) {
        avg = total_amount[pair] / count[pair]
        locations[pair] = avg
    }

    # Sort locations by average in descending order
    asorti(locations, loc_sorted, "num_desc")

    # Print the top 10 locations
    for (i = 1; i <= 10 && i <= length(loc_sorted); i++) {
        pair = loc_sorted[i]
        printf "Location: %s, Average Total Amount: %.2f\n", pair, locations[pair]
    }
}
