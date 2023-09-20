-- To find the number of types of tigers.
SELECT COUNT(*) AS number_of_tigers
FROM taxonomy
WHERE species LIKE '%tiger%';


-- to find ncbi_id of sumatrae tiger.
SELECT ncbi_id
FROM taxonomy
WHERE species = 'Panthera tigris sumatrae';