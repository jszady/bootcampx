SELECT students.name, AVG(assignment_submissions.duration)
FROM students JOIN assignment_submissions ON student_id = students.id
WHERE students.end_date IS NULL
GROUP BY students.name 
ORDER BY AVG(assignment_submissions.duration) DESC;