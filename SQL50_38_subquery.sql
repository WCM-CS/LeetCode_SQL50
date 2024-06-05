-- Leetcode SQL 50: Problem 38 --
-- Medium --

SELECT
    CASE 
        WHEN id = (select max(id) from seat) and id % 2 = 1
            THEN id
        WHEN id % 2 = 1
            THEN id + 1
        WHEN id % 2 = 0
            THEN id - 1
    END as id,
    student 
FROM seat 
ORDER BY id;