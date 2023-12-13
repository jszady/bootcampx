SELECT 
    sub.cohort_name, 
    sub.average_assistance_time
FROM (
    SELECT cohorts.name AS cohort_name, 
    AVG(assistance_requests.completed_at - assistance_requests.started_at) AS average_assistance_time
    FROM cohorts 
    JOIN students ON cohorts.id = students.cohort_id
    JOIN assistance_requests ON students.id = assistance_requests.student_id
    GROUP BY cohorts.name
)
AS sub
ORDER BY sub.average_assistance_time DESC
LIMIT 1;