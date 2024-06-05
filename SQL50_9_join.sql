-- Leetcode SQL 50: Problem 9 --
-- Easy --

SELECT w1.id as Id
FROM 
    Weather as w1, Weather as w2
WHERE 
    w1.temperature > w2.temperature
    AND
    datediff(w1.recordDate, w2.recordDate)=1;