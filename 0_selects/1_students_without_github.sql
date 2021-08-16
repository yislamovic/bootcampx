SELECT id, name, email, cohort_id
FROM students
WHERE email IS null
ORDER BY cohort_id