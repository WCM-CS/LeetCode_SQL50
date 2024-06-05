-- Leetcode SQL 50: Problem 15 --
-- Easy --

SELECT *
FROM Cinema
WHERE description <> 'boring' AND id % 2 = 1
ORDER BY rating desc;