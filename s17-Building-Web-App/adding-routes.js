// Here are more routes

app.get("/joke", function(req, res){
    let joke = "What do you call a dog that does magic tricks? A labracadabrador.";
    res.send(joke);
   });

app.get("/random_num", function(req, res){
    let num = Math.floor((Math.random() * 10) + 1);
    res.send("Your lucky number is " + num);
   });