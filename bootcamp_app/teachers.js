const { Pool } = require('pg');
const args = process.argv


const pool = new Pool({
  user: 'yahyaislamovic',
  password: 'airman',
  host: 'localhost',
  database: 'bootcampx'
});

pool.query(`
SELECT DISTINCT teachers.name AS teacher, cohorts.name AS cohort
FROM teachers
JOIN assistance_requests ON teachers.id = assistance_requests.teacher_id
JOIN students ON students.id = assistance_requests.student_id
JOIN cohorts ON students.cohort_id = cohorts.id
WHERE cohorts.name LIKE '%${args[2]}%'
ORDER BY teacher
`)
.then(res => {
  res.rows.forEach(user => {
    console.log(user.cohort + ': ' + user.teacher);
  })
}).catch(err => console.error('query error', err.stack));