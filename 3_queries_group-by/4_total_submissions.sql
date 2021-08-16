SELECT cohorts.name as cohort_name, count(assignment_submissions.*) 
AS total_submissions
FROM assignment_submissions 
JOIN students ON student_id = students.id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohort_name 
ORDER BY count(assignment_submissions.*) DESC