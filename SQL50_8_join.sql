-- Leetcode SQL 50: Problem 8 --
-- Easy --

SELECT 
    V.customer_id, 
    count(V.customer_id) as count_no_trans
FROM Visits as V
Left JOIN Transactions as T
ON V.visit_id = T.visit_id
WHERE transaction_id IS NULL
GROUP BY V.customer_id;


-- alt method using sub query--
/*
SELECT customer_id, COUNT(*) AS count_no_trans
FROM Visits
WHERE visit_id NOT IN (SELECT visit_id FROM Transactions)
GROUP BY customer_id */
