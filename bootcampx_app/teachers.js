const { Pool } = require("pg");
const pool = new Pool({
  user: "szady",
  password: "123",
  host: "localhost",
  database: "bootcampx",
});

const name = process.argv[2];
const values = [`%${name}%`];
const query = `
SELECT teachers.name AS teacher_name, cohorts.name AS cohort_name
FROM students
  JOIN cohorts ON cohorts.id = cohort_id
  JOIN assistance_requests ON students.id = student_id
  JOIN teachers ON teacher_id = teachers.id
WHERE cohorts.name LIKE $1
GROUP BY teachers.name, cohorts.name
ORDER BY teachers.name;
`;

pool.query(query, values).then((res) => {
  res.rows.forEach((element) => {
    console.log(`${element.cohort_name}: ${element.teacher_name}`);
  });
});
