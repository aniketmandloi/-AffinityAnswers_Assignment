#!/bin/bash

# the url is set for the curl functin in a variable.
URL="http://www.amfiindia.com/spages/NAVAll.txt"

# Defining the tsv file which we will use to copy or store our data from the url.
OUTPUT_FILE="data.tsv"

# Used curl to fetch the data and storing that in a variable.
data=$(curl -s "$URL")

# extracting Scheme name and asset values using cut with delimeter -d to split the data where ; is in between then selecting fields 3 and 5.
extracted_data=$(echo "$data" | cut -d ';' -f 3,5)

# Replacing semicolons with tabs spaces using tr and storing those in a variable.
formatted_data=$(echo "$extracted_data" | tr ';' '\t')

# last step is saving the fotmatted data to the .tsv file we declared above.
echo "$formatted_data" > "$OUTPUT_FILE"
