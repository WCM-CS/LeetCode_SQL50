-- Leetcode SQL 50: Problem 10 --
-- Easy --

SELECT
    a.machine_id, 
    round(avg(b.timestamp - a.timestamp), 3) as processing_time 
FROM Activity a
LEFT JOIN Activity b
ON a.machine_id = b.machine_id 
    and a.process_id = b.process_id 
    and a.activity_type = 'start' 
    and b.activity_type = 'end'
GROUP BY 1;