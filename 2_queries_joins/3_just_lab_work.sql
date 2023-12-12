SELECT students.name, count(assignment_submissions.assignment_id) as total_submissions
FROM assignment_submissions JOIN students ON students.id = student_id
WHERE students.end_date IS NULL
GROUP BY students.name
HAVING count(assignment_submissions.assignment_id) < 100;