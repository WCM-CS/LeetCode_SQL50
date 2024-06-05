-- Leetcode SQL 50: Problem 18 --
-- Easy --

SELECT
    contest_id,
    round(count(distinct user_id) * 100 /(select count(user_id) from Users), 2) as percentage
FROM Register
GROUP BY contest_id
ORDER BY percentage desc, contest_id