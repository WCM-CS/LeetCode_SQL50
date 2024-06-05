-- Leetcode SQL 50: Problem 41 --
-- Medium --

WITH ReqId AS (
    SELECT
        requester_id AS id,
        COUNT(requester_id) AS requestor_count
    FROM RequestAccepted
    GROUP BY requester_id
),
AccId AS (
    SELECT
        accepter_id AS id,
        COUNT(accepter_id) AS acceptor_count
    FROM RequestAccepted
    GROUP BY accepter_id
),
CombinedCounts AS (
    SELECT
        r.id,
        COALESCE(r.requestor_count, 0) + COALESCE(a.acceptor_count, 0) AS num
    FROM ReqId r
    LEFT JOIN AccId a ON r.id = a.id
    UNION
    SELECT
        a.id,
        COALESCE(r.requestor_count, 0) + COALESCE(a.acceptor_count, 0) AS num
    FROM AccId a
    LEFT JOIN ReqId r ON a.id = r.id
    WHERE r.id IS NULL
)
SELECT
    id, 
    num
FROM CombinedCounts
WHERE num = (
    SELECT MAX(num) 
    FROM CombinedCounts
)
ORDER BY id;

/* Much better solution
SELECT id, COUNT(*) AS num
FROM (SELECT requester_id AS id FROM requestaccepted
      UNION ALL
      SELECT accepter_id AS id FROM requestaccepted) a
GROUP BY id
ORDER BY num DESC
LIMIT 1
*/