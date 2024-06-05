-- Leetcode SQL 50: Problem 5 --
-- Easy --

SELECT tweet_id
FROM Tweets 
WHERE length(content) > 15;
