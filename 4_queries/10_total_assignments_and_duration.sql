SELECT assignments.day, count(assignments.*), 
SUM(assignments.duration)
FROM assignments
GROUP BY assignments.day
ORDER BY day;