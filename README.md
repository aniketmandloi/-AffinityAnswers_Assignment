# Address Validation with PIN Code

This repository contains my solution to the address validation task, which focuses on validating addresses by checking if the PIN code extracted from the address matches the expected format.

## Overview

In this task, we were given the responsibility to validate addresses to ensure that the PIN code corresponds to the address mentioned. The validation was performed using the postalpincode.in API, which provides PIN code information for Indian addresses.

## Code

The Python script for address validation is provided in the file `Q1_Validate.py`. The script includes a `validate_address` function that checks the provided address for a valid PIN code format.

## How to Run

Follow these steps to run the PIN code validation script:

1. Ensure you have Python installed on your system.

2. Open a terminal or command prompt.

3. Navigate to the directory containing `Q1_Validate.py`.

4. Run the script by executing the following command:

       python Q1_Validate.py

# SQL Database Interaction

This repository contains my solution to the SQL database interaction task, which involves querying the RFAM SQL database to retrieve specific information related to tigers, database connections, rice types, and family pagination.

## Overview

In this task, we interacted with the RFAM SQL database to perform various SQL queries. These queries were designed to answer specific questions related to tigers, database connections, rice types, and family pagination.

## SQL Queries

The SQL queries for this task are provided in the `SQL_queries.txt` file. Each query corresponds to a specific question and retrieves the required information from the RFAM SQL database.

## How to Run

To execute the SQL queries and obtain the desired information, follow these steps:

1. Access the RFAM SQL database using your preferred database management tool. You can run this command on your terminal to interact with Database.

       mysql --user rfamro --host mysql-rfam-public.ebi.ac.uk --port 4497 --database Rfam

3. Open the `Q3_Queries.txt` file.

4. Copy and paste each query into the SQL query editor of your database management tool or Command Line.

5. Execute each query to retrieve the results.

## Query Descriptions

Here's a brief description of each SQL query in `Q3_Queries.txt`:

- **Query 1:** Find the number of types of tigers in the taxonomy table and the ncbi_id of the Sumatran Tiger.

- **Query 2:** Identify the columns that can be used to connect the tables in the database.

- **Query 3:** Determine the type of rice with the longest DNA sequence.

- **Query 4:** Retrieve a paginated list of family names and their longest DNA sequence lengths in descending order of length, where only families with DNA sequence lengths greater than 1,000,000 are included. The query returns the 9th page with 15 results per page.


# AMFI Data Extraction Script

This shell script is designed to fetch data from a specific URL and extract the Scheme Name and Asset Value fields. The extracted data is then saved in a TSV (Tab-Separated Values) file for further analysis or use.

## Usage

1. Ensure you have a Unix-like environment (e.g., Linux or macOS) with `bash` and `curl` installed.

2. Download the `Q3_bashScript.sh` script to your local machine.

3. Make the script executable:
  
       chmod +x amfi_data_extraction.sh

4. Run the Script

       ./Q3_bashScript.sh

