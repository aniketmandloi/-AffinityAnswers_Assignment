
-- (a)
-- To find the number of types of tigers.
SELECT COUNT(*) AS number_of_tigers
FROM taxonomy
WHERE species LIKE '%tiger%';
-- returns- 406

-- to find ncbi_id of sumatrae tiger.
SELECT ncbi_id
FROM taxonomy
WHERE species = 'Panthera tigris sumatrae';
-- returns- empty set


-- (b)
-- To find all the columns that can be used to connect the tables in the given database.
SELECT CONSTRAINT_NAME, TABLE_NAME, COLUMN_NAME, REFERENCED_TABLE_NAME, REFERENCED_COLUMN_NAME
FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE
WHERE REFERENCED_TABLE_NAME IS NOT NULL
AND TABLE_SCHEMA = 'Rfam';
-- returns 48 rows


-- (c)
-- to find Which type of rice has the longest DNA sequence?.
SELECT t.species AS rice_type, MAX(rs.length) AS length 
FROM rfamseq rs 
JOIN taxonomy t 
ON rs.ncbi_id = t.ncbi_id 
WHERE t.species LIKE '%rice%' 
GROUP BY t.species 
ORDER BY length DESC 
LIMIT 1;
-- returns - rice_type-Cronobacter turicensis z3032 length-4384463


-- (d)
-- To paginatea list of family
SELECT accession, rfamseq_acc, MAX(length) AS longest_sequence_length 
FROM rfamseq 
GROUP BY accession, rfamseq_acc 
HAVING longest_sequence_length > 1000000 
ORDER BY longest_sequence_length DESC 
LIMIT 15 OFFSET 120;
