-- Calculate the average total duration of assistance requests for each cohort.

-- Use the previous query as a sub query to determine the duration per cohort.
-- Return a single row average_total_duration


SELECT AVG(total_duration) AS average_total_duration
FROM (SELECT c.name, SUM(ar.completed_at - ar.started_at) AS total_duration
FROM cohorts c
JOIN students s ON s.cohort_id = c.id
JOIN assistance_requests ar ON ar.student_id = s.id
GROUP BY c.id
ORDER BY total_duration) as total_durations;
