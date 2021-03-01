-- Select the total number of students who were in the first 3 cohorts.

SELECT count(id)
FROM students
WHERE cohort_id in (1, 2, 3);
