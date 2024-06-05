-- Leetcode SQL 50: Problem 49 --
-- Easy --

WITH FinTable as(
    SELECT
        o.product_id, 
        p.product_name, 
        o.order_date, 
        SUM(o.unit) AS unit
    FROM Orders as o
    LEFT JOIN Products as p
        ON o.product_id = p.product_id
    WHERE DATE_FORMAT(o.order_date, "%Y-%m") = "2020-02"
    GROUP BY p.product_id
    HAVING SUM(o.unit) >= 100
)
SELECT
    product_name,
    unit
FROM FinTable;