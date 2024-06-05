-- Leetcode SQL 50: Problem 13 --
-- Medium --

SELECT e2.name
FROM Employee e1
LEFT JOIN Employee e2 
ON e1.managerid = e2.id
GROUP BY e2.id 
HAVING count(e2.id)>=5;
