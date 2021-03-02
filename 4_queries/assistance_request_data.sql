-- Get important data about each assistance request.

-- Select the teacher's name, student's name, assignment's name, and the duration of each assistance request.
-- Subtract completed_at by started_at to find the duration.
-- Order by the duration of the request.

SELECT t.name AS teacher, s.name AS student, a.name AS assignment, (ar.completed_at - ar.started_at) AS duration
FROM teachers t
JOIN assistance_requests ar ON t.id = ar.teacher_id
JOIN students s ON s.id = ar.student_id
JOIN assignments a ON a.id = ar.assignment_id
ORDER BY duration;
