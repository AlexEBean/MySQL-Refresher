// node s16-Node/MySQL.js

// Run npm install mysql in bash

// I needed to run the following
// ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'password';
// FLUSH PRIVILEGES;

// The string 'password' is a password you choose and have to remember
// For me, I put my password in a .env file. Then, I put .env in a .gitignore so it wouldn't be uploaded to GitHub.
// npm i dotenv is also needed

require('dotenv').config()

const mysql = require('mysql');

const {PASSWORD} = process.env
 
const connection = mysql.createConnection({
  host     : 'localhost',
  user     : 'root',     // your root username
  database : 'join_us',   // the name of your db
  password: PASSWORD
});


// This is effectively SELECT 1 + 1
connection.query('SELECT 1 + 1 AS solution', function (error, results, fields) {
    if (error) throw error;
    console.log('The solution is: ', results[0].solution);
 })

 // This is effectively SELECT CURTIME() as time, CURDATE() as date, NOW() as now
 const q = 'SELECT CURTIME() as time, CURDATE() as date, NOW() as now';

 connection.query(q, function (error, results, fields) {
   if (error) throw error;
   console.log(results[0].time);
   console.log(results[0].date);
   console.log(results[0].now);
 });

 connection.end()
