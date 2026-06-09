# Write your MySQL query statement below
select score,
DENSE_RANK() OVER(order by score desc) AS 'rank'
from Scores;




-- soultion By Alok