// node s16-Node/exercises.js

require('dotenv').config()

const mysql = require('mysql');

const {PASSWORD} = process.env
 
const connection = mysql.createConnection({
  host     : 'localhost',
  user     : 'root',     // your root username
  database : 'join_us',   // the name of your db
  password: PASSWORD
});

// 1

const a = 'SELECT DATE_FORMAT(created_at, "%M %D %Y") AS earliest_date FROM users ORDER BY created_at LIMIT 1';
connection.query(a, function (error, results, fields) {
  if (error) throw error;
  console.log(results);
});

// Also works
// const a = 'SELECT DATE_FORMAT(MIN(created_at), "%M %D %Y") as earliest_date FROM users'
// connection.query(a, function (error, results, fields) {
//   if (error) throw error;
//   console.log(results);
// });

// 2

const b = 'SELECT * FROM users ORDER BY created_at LIMIT 1';
connection.query(b, function (error, results, fields) {
  if (error) throw error;
  console.log(results);
});

// 3

const c = 'SELECT DATE_FORMAT(created_at, "%M") AS month, COUNT(*) AS count FROM   users GROUP BY month ORDER BY count DESC';
connection.query(c, function (error, results, fields) {
  if (error) throw error;
  console.log(results);
});

// Also works
// const c = 'SELECT MONTHNAME(created_at) AS month, COUNT(*) AS count FROM  users GROUP BY month ORDER BY count DESC';
// connection.query(c, function (error, results, fields) {
//   if (error) throw error;
//   console.log(results);
// });


// 4

const d = 'SELECT COUNT(*) AS yahoo_users FROM   users WHERE email LIKE "%yahoo.com"';
connection.query(d, function (error, results, fields) {
  if (error) throw error;
  console.log(results);
});

// 5

const e = 'SELECT CASE WHEN email LIKE "%@gmail.com" THEN "gmail" WHEN email LIKE "%@yahoo.com" THEN "yahoo" WHEN email LIKE "%@hotmail.com" THEN "hotmail" ELSE "other" END      AS provider, COUNT(*) AS total_users FROM   users GROUP  BY provider ORDER  BY total_users DESC';
connection.query(e, function (error, results, fields) {
  if (error) throw error;
  console.log(results);
});

connection.end();