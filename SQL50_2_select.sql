-- Leetcode SQL 50: Problem 2 -- 
-- Easy --

SELECT name
FROM Customer
WHERE referee_id <> 2 OR referee_id IS NULL;