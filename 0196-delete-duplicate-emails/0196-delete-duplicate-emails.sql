/* 
 Please write a DELETE statement and DO NOT write a SELECT statement.
 Write your T-SQL query statement below
 */
 with cte as (
     select min(id) as id ,email 
     from person group by email 
 )
delete from person where id not in (select id from cte)