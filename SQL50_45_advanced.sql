-- Leetcode SQL 50: Problem 45 --
-- Easy --

SELECT Patient_id, Patient_name, conditions
FROM Patients
WHERE conditions LIKE "DIAB1%" OR conditions LIKE "% DIAB1%";