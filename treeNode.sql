608. Tree Node

Input: 
Tree table:
+----+------+
| id | p_id |
+----+------+
| 1  | null |
| 2  | 1    |
| 3  | 1    |
| 4  | 2    |
| 5  | 2    |
+----+------+
Output: 
+----+-------+
| id | type  |
+----+-------+
| 1  | Root  |
| 2  | Inner |
| 3  | Leaf  |
| 4  | Leaf  |
| 5  | Leaf  |
+----+-------+

Soln

select id,
case when p_id is null then 'Root'
    when p_id is not null and id in (select distinct p_id from Tree where p_id is not null) then 'Inner'
    else 'Leaf' end as type
from Tree
