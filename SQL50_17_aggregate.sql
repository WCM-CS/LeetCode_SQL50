-- Leetcode SQL 50: Problem 17 --
-- Easy --

SELECT project_id, round(avg(e.experience_years),2) as average_years
FROM Project p
LEFT JOIN Employee e
ON p.employee_id = e.employee_id
GROUP BY project_id;