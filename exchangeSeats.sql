
626. Exchange Seats
Input: 
Seat table:
+----+---------+
| id | student |
+----+---------+
| 1  | Abbot   |
| 2  | Doris   |
| 3  | Emerson |
| 4  | Green   |
| 5  | Jeames  |
+----+---------+
Output: 
+----+---------+
| id | student |
+----+---------+
| 1  | Doris   |
| 2  | Abbot   |
| 3  | Green   |
| 4  | Emerson |
| 5  | Jeames  |


Sol'n

SELECT 
    CASE 
        WHEN id%2 = 0 AND id < (SELECT MAX(id) FROM seat)
        THEN id - 1
        WHEN (id%2) = 1 AND id = (SELECT MAX(id) FROM seat)
        THEN id
        WHEN (id%2) = 0 AND id = (SELECT MAX(id) FROM seat)
        THEN id - 1
        ELSE id + 1
    END AS id,
    student
FROM seat
ORDER BY id ASC;
