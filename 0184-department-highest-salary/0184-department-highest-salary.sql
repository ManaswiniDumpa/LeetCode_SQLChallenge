# Write your MySQL query statement below
select d.name as Department, 
e.name as Employee, 
salary as Salary from employee 
e join department d 
on e.departmentId=d.id 
where (Salary,departmentId) in
    (select max(salary),departmentId 
     from employee 
     group by departmentId
    )

