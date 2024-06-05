-- Leetcode SQL 50: Problem 19 --
-- Easy --

SELECT 
    query_name, 
    round(sum(rating/position)/count(query_name), 2) as quality,
    round(sum(rating < 3)/count(query_name) * 100, 2) as poor_query_percentage
FROM Queries
WHERE query_name IS NOT NULL
GROUP BY query_name;