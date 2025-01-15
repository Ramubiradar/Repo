#!/bin/bash

# Input arguments
path=$1
count=$2

ls -ltr "$path" | awk 'NR>1 {print $NF}' > outputlog

# Get the total number of files
total=$(wc -l < outputlog)
echo "Total files present in $path is $total"

# Read outputlog line by line
while read -r line; do
    # Check if the total number of files exceeds the limit
    if [ "$total" -gt "$count" ]; then
        # Remove the file and decrement the total count
        rm -rf "$path/$line"
        total=$((total - 1))
    else
        # Break out of the loop when the desired count is reached
        break
    fi
done < outputlog

# Remove the temporary outputlog file
rm -f outputlog

echo "Cleanup completed. Remaining files: $total"
