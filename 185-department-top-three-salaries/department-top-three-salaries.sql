select d.name as Department,
       e.name as Employee ,
       e. salary as Salary

    from   (    select * ,
                 DENSE_RANK() OVER(partition by departmentId order by Salary desc) as rnk
                   from Employee
) e 

join Department as d
on e.departmentId = d.id
where rnk <=3;


-- solution by Alok Ranjan