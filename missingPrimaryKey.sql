How to find the missing primary key in a table ?

SELECT t1.id + 1 AS missing_id
FROM your_table t1
LEFT JOIN your_table t2 ON t1.id + 1 = t2.id
WHERE t2.id IS NULL
ORDER BY missing_id
