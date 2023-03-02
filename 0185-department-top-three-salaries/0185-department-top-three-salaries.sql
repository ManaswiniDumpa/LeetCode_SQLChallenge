/* Write your T-SQL query statement below */

select Department,Employee,Salary 
from (
    select Dense_Rank() 
        over(Partition by e.departmentId ORDER BY e.Salary desc) 
        as ra,
        d.name as 'Department',
        e.name as 'Employee',
        e.salary as 'Salary' 
        from employee e join department d on e.departmentId=d.id 
    )
    e1 where ra<=3

 
