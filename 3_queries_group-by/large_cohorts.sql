-- Get all cohorts with 18 or more students.

-- Select the cohort name and the total students.
-- Order by total students from smallest to greatest.

SELECT c.name AS cohort_name, COUNT(s.*) AS student_count
FROM cohorts c
JOIN students s ON c.id = s.cohort_id
GROUP BY c.id
HAVING COUNT(s.*) >= 18
ORDER BY COUNT(s.*) ASC;
