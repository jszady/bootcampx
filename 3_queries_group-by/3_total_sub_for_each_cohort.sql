SELECT cohorts.name, count(assignments.*) as total_assignments
FROM cohorts JOIN students ON cohort_id = cohorts.id
JOIN assignment_submissions ON student_id = students.id
JOIN assignments ON assignments.id = assignment_id
GROUP BY cohorts.name
ORDER BY COUNT(assignments.*) DESC;