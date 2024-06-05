-- Leetcode SQL 50: Problem 6 --
-- Easy --

SELECT EU.unique_id, E.name
FROM Employees as E
LEFT JOIN EmployeeUNI as EU
ON E.id = EU.id;