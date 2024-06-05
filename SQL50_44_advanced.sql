-- Leetcode SQL 50: Problem 44 --
-- Easy --

# capitolizes first char
SELECT 
user_id, 
CONCAT(UPPER(SUBSTRING(name, 1, 1)), LOWER(SUBSTRING(name, 2))) as name
FROM Users 