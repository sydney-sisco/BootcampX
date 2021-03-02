-- Get the cohort with the longest average duration of assistance requests.

-- The same requirements as the previous query, but only return the single row with the longest average.

SELECT c.name, AVG(ar.completed_at - ar.started_at) AS average_assistance_time
FROM cohorts c
JOIN students s ON s.cohort_id = c.id
JOIN assistance_requests ar ON ar.student_id = s.id
GROUP BY c.name
ORDER BY average_assistance_time DESC
LIMIT 1;
