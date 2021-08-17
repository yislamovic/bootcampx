SELECT assignments.id AS id, assignments.day AS day, assignments.chapter AS chapter, assignments.name, count(assistance_requests.*) AS total_requests
FROM assignments
JOIN assistance_requests ON assignments.id = assistance_requests.assignment_id
GROUP BY assignments.id
ORDER BY total_requests DESC