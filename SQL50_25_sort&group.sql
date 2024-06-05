-- Leetcode SQL 50: Problem 24 --
-- Medium --

SELECT product_id, year AS first_year, quantity, price 
FROM Sales 
WHERE(
    (product_id, year) in (SELECT product_id, MIN(year) 
    FROM Sales 
    GROUP BY product_id))