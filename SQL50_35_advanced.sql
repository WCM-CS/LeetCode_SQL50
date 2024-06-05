-- Leetcode SQL 50: Problem 35 --
-- Medium --

WITH RunningTotal AS (
    SELECT person_name,
           weight,
           SUM(weight) OVER (ORDER BY turn ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS running_total,
           turn
    FROM Queue
)
SELECT person_name
FROM RunningTotal
WHERE running_total <= 1000
ORDER BY turn DESC
LIMIT 1;