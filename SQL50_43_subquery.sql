-- Leetcode SQL 50: Problem 43 --
-- Hard --

WITH RankedEmployees AS (
    SELECT
        e.name as Employee, e.salary as Salary, e.departmentId, d.name as Department,
        DENSE_RANK() OVER (PARTITION BY e.departmentId ORDER BY e.salary DESC) as rnk
    FROM Employee e
    JOIN Department d ON e.departmentId = d.id
)
SELECT
    Department, 
    Employee, 
    Salary
FROM RankedEmployees
WHERE rnk <= 3
ORDER BY Department;