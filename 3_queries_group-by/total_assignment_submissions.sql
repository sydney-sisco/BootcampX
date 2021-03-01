-- Get the total number of assignment submissions for each cohort.

-- Select the cohort name and total submissions.
-- Order the results from greatest to least submissions.

SELECT c.name AS cohort_name, COUNT(sub.*) AS total_submissions
FROM cohorts c
JOIN students s ON s.cohort_id = c.id
JOIN assignment_submissions sub ON sub.student_id = s.id
GROUP BY c.id
ORDER BY COUNT(sub.*) DESC;
