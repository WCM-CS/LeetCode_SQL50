-- Leetcode SQL 50: Problem 30 --
-- Easy --

SELECT 
    manager.employee_id,
    manager.name,
    count(employee.employee_id) as reports_count,
    ROUND(AVG(employee.age)) as average_age
FROM Employees as manager
INNER JOIN Employees as employee
ON manager.employee_id = employee.reports_to
GROUP BY manager.employee_id
ORDER BY 1;
