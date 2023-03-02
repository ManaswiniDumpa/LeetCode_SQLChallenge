/* Write your T-SQL query statement below */

select e.name as Employee 
from employee e join employee e1 
on e.managerId= e1.id and e.salary>e1.salary