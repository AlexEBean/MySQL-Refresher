// npm install --save body-parse

const bodyParser  = require("body-parser");

app.use(bodyParser.urlencoded({extended: true}));

let person = {email: req.body.email};

// Is all incorporated into making the following work in app.js

app.post('/register', function(req,res){
    var person = {email: req.body.email};
    connection.query('INSERT INTO users SET ?', person, function(err, result) {
     console.log(err);
     console.log(result);
     res.redirect("/");
   });
  });