SELECT assignments.id, assignments.name, assignments.day, assignments.chapter, count(assistance_requests.*)
from assignments
JOIN assistance_requests ON assignments.id = assignment_id
GROUP BY assignments.id
ORDER BY count(assistance_requests.*) DESC;