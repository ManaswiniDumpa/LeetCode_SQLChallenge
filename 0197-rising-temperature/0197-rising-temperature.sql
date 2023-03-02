/* Write your T-SQL query statement below */
select distinct  w.id as 'Id' 
from weather w join weather w1 
on w.temperature>w1.temperature 
and datediff(day,w1.recordDate ,w.recordDate )=1