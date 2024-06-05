-- Leetcode SQL 50: Problem 28 --
-- Easy --

SELECT MAX(num) as num
FROM (
    SELECT num
    FROM MyNumbers
    GROUP BY num
    HAVING COUNT(*) = 1
) AS distinct_numbers;
