-- Get the total number of assistance_requests for a student.

-- Select the student's name and the total assistance requests.
-- Since this query needs to work with any specific student name, use 'Elliot Dickinson' for the student's name here.

SELECT COUNT(*) AS total_assistances, s.name
FROM students s
JOIN assistance_requests ar ON s.id = ar.student_id
WHERE s.name = 'Elliot Dickinson'
GROUP BY s.name;
