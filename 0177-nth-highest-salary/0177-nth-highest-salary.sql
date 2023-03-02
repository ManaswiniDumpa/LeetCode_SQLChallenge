CREATE FUNCTION getNthHighestSalary(@N INT) RETURNS INT AS
BEGIN
    RETURN (

  select isnull((select salary from (SELECT Distinct(salary),
        DENSE_RANK() OVER(ORDER BY salary desc) AS rn from employee ) e where e.rn=@N),null)
        
    );
END