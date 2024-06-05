-- Leetcode SQL 50: Problem 33 --
-- Medium --

SELECT DISTINCT num as ConsecutiveNums 
FROM Logs 
WHERE (id+1,num) in (select * from logs) 
AND (id+2,num) in (select * from logs)