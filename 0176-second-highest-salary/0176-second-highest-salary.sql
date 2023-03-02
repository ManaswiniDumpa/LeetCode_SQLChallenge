/* Write your T-SQL query statement below */

select isnull((SELECT Max(Distinct(SALARY))  FROM EMPLOYEE 
group by salary
ORDER BY SALARY desc
offset 1 rows fetch first 1 rows only),null) as SecondHighestSalary