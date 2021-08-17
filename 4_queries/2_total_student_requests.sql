SELECT COUNT(assistance_requests.*) AS student_requests, students.name AS name
FROM assistance_requests
JOIN students ON student_id = students.id
WHERE students.name = 'Elliot Dickinson'
GROUP BY name