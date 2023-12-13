SELECT teachers.name, students.name, assignments.name, assistance_requests.completed_at - assistance_requests.started_at  
FROM assistance_requests 
JOIN teachers ON teacher_id = teachers.id
JOIN students ON student_id = students.id
JOIN assignments ON assignments.id = assignment_id
WHERE assistance_requests.completed_at IS NOT NULL
GROUP BY assignments.name, teachers.name, students.name, assistance_requests.completed_at, assistance_requests.started_at
ORDER BY assistance_requests.completed_at - assistance_requests.started_at;
