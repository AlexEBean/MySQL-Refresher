// node s16-Node/select.js

require('dotenv').config()

const mysql = require('mysql');

const {PASSWORD} = process.env
 
const connection = mysql.createConnection({
  host     : 'localhost',
  user     : 'root',     // your root username
  database : 'join_us',   // the name of your db
  password: PASSWORD
});

const q = 'SELECT * FROM users ';
connection.query(q, function (error, results, fields) {
  if (error) throw error;
  console.log(results);
});

const r = 'SELECT COUNT(*) AS total FROM users ';
connection.query(r, function (error, results, fields) {
  if (error) throw error;
  console.log(results[0].total);
});

connection.end();