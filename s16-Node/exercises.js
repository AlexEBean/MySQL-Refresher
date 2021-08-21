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

// const a = 'SELECT DATE_FORMAT(created_at, "%M %D %Y") AS earliest_date FROM users ORDER BY created_at LIMIT 1';
// connection.query(a, function (error, results, fields) {
//   if (error) throw error;
//   console.log(results);
// });

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



// 4



// 5

connection.end();