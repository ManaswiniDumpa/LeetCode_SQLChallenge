/* Write your T-SQL query statement below */

select distinct num as ConsecutiveNums 
    from 
        (
         select num, lead(num) over(order by id) as le, 
         lag(num) over(order by id) as la 
         from logs 
         )l 
        
    where l.le=num and l.la=num 