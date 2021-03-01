-- Get the students who's average time it takes to complete an assignment is less than the average estimated time it takes to complete an assignment.

-- Select the name of the student, their average completion time, and the average suggested completion time.
-- Order by average completion time from smallest to largest.
-- Only get currently enrolled students.
-- This will require data from students, assignment_submissions, and assignments.

SELECT s.name AS student, AVG(sub.duration) AS average_assignment_duration, AVG(a.duration) AS average_estimated_duration
FROM students s
JOIN assignment_submissions sub ON sub.student_id = s.id
JOIN assignments a ON a.id = sub.assignment_id
WHERE end_date IS NULL
GROUP BY student
HAVING AVG(sub.duration) < AVG(a.duration)
ORDER BY AVG(sub.duration) ASC;
