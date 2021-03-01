-- Get currently enrolled students' average assignment completion time.

-- Select the students name and average time from assignment submissions.
-- Order the results from greatest duration to least greatest duration.
-- A student will have a null end_date if they are currently enrolled

SELECT s.name AS student, AVG(sub.duration) AS average_assignment_duration
FROM students s
JOIN assignment_submissions sub ON s.id = sub.student_id
WHERE s.end_date IS NULL
GROUP BY s.name
ORDER BY average_duration DESC;
