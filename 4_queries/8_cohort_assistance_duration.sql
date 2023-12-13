SELECT AVG(sub.sum_of_assistance_requests)
FROM (
  SELECT SUM(assistance_requests.completed_at - assistance_requests.started_at) AS sum_of_assistance_requests
  FROM cohorts 
  JOIN students ON cohort_id = cohorts.id
  JOIN assistance_requests ON student_id = students.id
  GROUP BY cohorts.name  
) AS sub;