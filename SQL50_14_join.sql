-- Leetcode SQL 50: Problem 14 --
-- Medium --

SELECT 
    s.user_id, 
    round(ifnull(sum(c.action='confirmed')/count(*),0),2) as confirmation_rate
FROM Signups s
LEFT JOIN Confirmations c
ON s.user_id = c.user_id
GROUP BY s.user_id;