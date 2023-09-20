# Fetch data from the URL and save it to a file
curl -s "http://www.amfiindia.com/spages/NAVAll.txt" > amfi_data.txt

# Extract Scheme Name and Asset Value fields and save in a TSV file
awk -F ';' '{print $4 "\t" $5}' amfi_data.txt > amfi_data.tsv

# Clean up by removing the intermediate text file
rm amfi_data.txt

# Provide a message indicating the completion of the task
echo "Data extraction and conversion to TSV completed."
