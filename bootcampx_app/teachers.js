const { Pool } = require("pg");
const pool = new Pool({
  user: "szady",
  password: "123",
  host: "localhost",
  database: "bootcampx",
});

pool
  .query(
    `
SELECT teachers.name AS teacher_name, cohorts.name AS cohort_name
FROM students
  JOIN cohorts ON cohorts.id = cohort_id
  JOIN assistance_requests ON students.id = student_id
  JOIN teachers ON teacher_id = teachers.id
WHERE cohorts.name LIKE '%${process.argv[2]}%'
GROUP BY teachers.name, cohorts.name
ORDER BY teachers.name;
`
  )
  .then((res) => {
    res.rows.forEach((element) => {
      console.log(`${element.cohort_name}: ${element.teacher_name}`);
    });
  });
