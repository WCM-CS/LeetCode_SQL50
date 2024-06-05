-- Leetcode SQL 50: Problem 26 --
-- Easy --

SELECT class
FROM Courses
GROUP BY class
HAVING count(student) > 4;