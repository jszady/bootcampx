SELECT cohorts.name, count(students.name) 
FROM cohorts JOIN students ON cohorts.id = cohort_id
GROUP BY cohorts.name
HAVING count(students.name) >= 18
ORDER BY count(students.name);SELECT cohorts.name, count(students.name) 
FROM cohorts JOIN students ON cohorts.id = cohort_id
GROUP BY cohorts.name
HAVING count(students.name) >= 18
ORDER BY count(students.name);