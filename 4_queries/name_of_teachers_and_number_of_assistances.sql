-- Perform the same query as before, but include the number of assistances as well.

SELECT DISTINCT t.name AS teacher, c.name AS cohort, COUNT(*) AS total_assistances
FROM cohorts c
JOIN students s ON s.cohort_id = c.id
JOIN assistance_requests ar ON ar.student_id = s.id
JOIN teachers t ON t.id = ar.teacher_id
WHERE c.name = 'JUL02'
GROUP BY t.name, c.name
ORDER BY t.name;
