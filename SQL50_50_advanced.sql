-- Leetcode SQL 50: Problem 50 --
-- Easy --

SELECT *
FROM Users
WHERE mail LIKE "%@leetcode.com"
AND mail REGEXP "^[a-zA-Z][a-zA-Z0-9._-]*@leetcode.com$";