#!/bin/sh

#check if the input file exists

if [ ! -f movies.csv ]; then
	  echo "Input file 'movies.csv' not found."
	    exit 1
    fi

    # Process the CSV file and replace ^M with a newline and | with nothing
    sed -e 's/\r/\n/g' -e 's/|//g' -e '2,$ s/\(.*,\)\(.*,\)\(.*\)\(.\{17\}\),/\1\2\3,/' movies.csv > formatted_movies.csv
    echo "CSV file processed and saved as 'formatted_movies.csv'"
    
