// Make sure you're in s17-Building-Web-App in bash before running
// node app.js

require('dotenv').config()

const express = require('express');
const mysql = require('mysql');
const bodyParser  = require("body-parser");

const app = express();

app.set("view engine", "ejs")
app.use(bodyParser.urlencoded({extended: true}));

const {PASSWORD} = process.env
 
const connection = mysql.createConnection({
  host     : 'localhost',
  user     : 'root',     // your root username
  database : 'join_us',   // the name of your db
  password: PASSWORD
});

// Go to localhost:8080
app.get("/", function(req, res){
    let q = 'SELECT COUNT(*) as count FROM users';
    connection.query(q, function (error, results) {
        if (error) throw error;
        let count = results[0].count;
        res.render("EJS-template", {count: count})
    });
   });

// Go to localhost:8080/joke
app.get("/joke", function(req, res){
    let joke = "What do you call a dog that does magic tricks? A labracadabrador.";
    res.send(joke);
   });

   // Go to localhost:8080/random_num
app.get("/random_num", function(req, res){
    let num = Math.floor((Math.random() * 10) + 1);
    res.send(`Your lucky number is ${num}.`);
   });

app.post('/register', function(req,res){
    let person = {email: req.body.email};
    connection.query('INSERT INTO users SET ?', person, function(err, result) {
        console.log(err);
        console.log(result);
        res.redirect("/");
    });
});
 
app.listen(8080, function () {
 console.log('App listening on port 8080!');
});