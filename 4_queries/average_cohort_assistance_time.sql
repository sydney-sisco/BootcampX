-- Get the average duration of assistance requests for each cohort.

-- Select the cohort's name and the average assistance request time.
-- Order the results from shortest average to longest.

SELECT c.name, AVG(ar.completed_at - ar.started_at) AS average_assistance_time
FROM cohorts c
JOIN students s ON s.cohort_id = c.id
JOIN assistance_requests ar ON ar.student_id = s.id
GROUP BY c.name
ORDER BY average_assistance_time;
