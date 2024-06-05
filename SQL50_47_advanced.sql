-- Leetcode SQL 50: Problem 47 --
-- Medium --

SELECT 
    max(salary) as SecondHighestSalary 
FROM 
    employee
WHERE 
    salary NOT IN (
        SELECT max(salary) 
        FROM employee
        )
    
/*
select max(salary) as SecondHighestSalary from employee
where salary not in (select max(salary) from employee)

SELECT
    (SELECT DISTINCT Salary 
    FROM Employee ORDER BY salary DESC
    LIMIT 1 offset 1) 
as SecondHighestSalary;
*/