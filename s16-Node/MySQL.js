// node s16-Node/MySQL.js

// Run npm install mysql in bash

const mysql = require('mysql');
 
const connection = mysql.createConnection({
  host     : 'localhost',
  user     : 'root',     // your root username
  database : 'join_us'   // the name of your db
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
