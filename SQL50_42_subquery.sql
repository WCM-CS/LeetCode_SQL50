-- Leetcode SQL 50: Problem 42 --
-- Medium --

SELECT
    ROUND(SUM(tiv_2016), 2) AS tiv_2016
FROM Insurance
WHERE (lat, lon) NOT IN (
    SELECT lat, lon
    FROM Insurance
    GROUP BY lat, lon
    HAVING COUNT(*) > 1
)
AND tiv_2015 IN (
    SELECT tiv_2015
    FROM Insurance
    GROUP BY tiv_2015
    HAVING COUNT(*) > 1
)

/* better code using cte and wndow functions
WITH
  InsuranceWithCounts AS (
    SELECT
      tiv_2016,
      COUNT(*) OVER(PARTITION by tiv_2015) AS tiv_2015_count,
      COUNT(*) OVER(PARTITION by lat, lon) AS city_count
    FROM Insurance
  )
SELECT ROUND(SUM(tiv_2016), 2) AS tiv_2016
FROM InsuranceWithCounts
WHERE tiv_2015_count > 1
  AND city_count = 1;

*/