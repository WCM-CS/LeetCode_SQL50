-- Leetcode SQL 50: Problem 3 -- 
-- Easy --

SELECT name, population, area
FROM World
WHERE area >= 3000000 OR population >= 25000000
ORDER BY name;
