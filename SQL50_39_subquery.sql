-- Leetcode SQL 50: Problem 39 --
-- Medium --

Select
    (SELECT U.name
    FROM MovieRating MR
    INNER JOIN Users U ON MR.user_id = U.user_id
    GROUP BY U.name
    ORDER BY COUNT(MR.movie_id) DESC, U.name ASC
    LIMIT 1) 
    AS results
UNION ALL
SELECT
    (SELECT M.title
    FROM MovieRating MR
    INNER JOIN Movies M ON MR.movie_id = M.movie_id
    WHERE DATE_FORMAT(MR.created_at, '%Y-%m') = '2020-02'
    GROUP BY M.title
    ORDER BY AVG(MR.rating) DESC, M.title ASC
    LIMIT 1) 
    AS results;