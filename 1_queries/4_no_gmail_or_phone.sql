SELECT name, id, email, cohort_id
FROM students
WHERE email NOT LIKE '%gamil.com%'
AND phone IS NULL;