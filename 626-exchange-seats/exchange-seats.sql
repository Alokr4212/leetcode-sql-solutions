# Write your MySQL query statement below
select 
(case
     when id % 2 = 1 and id + 1 <= (select max(id) from Seat) then id + 1
     when id % 2 = 0 Then id - 1
     Else id 
     End) as id,
     student from Seat
     order by id;



