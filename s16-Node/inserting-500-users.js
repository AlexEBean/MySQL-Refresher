// node s16-Node/inserting-500-users.js

require('dotenv').config()

const mysql = require('mysql');
const faker = require('faker');

const {PASSWORD} = process.env
 
const connection = mysql.createConnection({
  host     : 'localhost',
  user     : 'root',
  database : 'join_us',
  password: PASSWORD
});
 
 
let data = [];
for(let i = 0; i < 500; i++){
    data.push([
        faker.internet.email(),
        faker.date.past()
    ]);
}
 
 
const q = 'INSERT INTO users (email, created_at) VALUES ?';
 
connection.query(q, [data], function(err, result) {
  console.log(err);
  console.log(result);
});
 
connection.end();