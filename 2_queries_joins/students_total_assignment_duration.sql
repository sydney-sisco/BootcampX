-- Get the total amount of time that a student has spent on all assignments.

-- This should work for any student but use 'Ibrahim Schimmel' for now.
-- Select only the total amount of time as a single column.

SELECT SUM(a.duration) as total_duration
FROM students s
JOIN assignment_submissions a ON s.id = a.student_id
WHERE s.name = 'Ibrahim Schimmel';
