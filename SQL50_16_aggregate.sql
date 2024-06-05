-- Leetcode SQL 50: Problem 16 --
-- Easy --

SELECT 
    p.product_id, 
    IFNULL(round(sum(p.price * u.units)/sum(u.units),2),0) as average_price
FROM Prices p
LEFT JOIN UnitsSold u
ON p.product_id = u.product_id 
AND u.purchase_date BETWEEN p.start_date AND p.end_date
GROUP BY p.product_id