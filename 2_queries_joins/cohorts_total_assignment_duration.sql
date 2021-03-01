-- Get the total amount of time that all students from a specific cohort have spent on all assignments.

-- This should work for any cohort but use FEB12 for now.
-- Select only the total amount of time as a single column.

SELECT SUM(a.duration) AS total_duration
FROM cohorts c
JOIN students s ON c.id = s.cohort_id
JOIN assignment_submissions a ON a.student_id = s.id
WHERE c.id = 1;
