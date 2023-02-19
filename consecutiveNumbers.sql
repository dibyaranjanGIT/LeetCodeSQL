--Write an SQL query to find all numbers that appear at least three times consecutively.
--Return the result table in any order.

SELECT distinct l1.num as ConsecutiveNums
FROM Logs l1
JOIN Logs l2 ON l1.Id = l2.Id - 1 AND l1.Num = l2.Num
JOIN Logs l3 ON l1.Id = l3.Id - 2 AND l1.Num = l3.Num
