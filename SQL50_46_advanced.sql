-- Leetcode SQL 50: Problem 46 --
-- Easy --

DELETE p1
FROM Person p1
JOIN Person p2 ON p1.email = p2.email AND p1.id > p2.id;