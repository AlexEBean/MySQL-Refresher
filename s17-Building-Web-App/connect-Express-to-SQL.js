app.get("/", function(req, res){
    let q = 'SELECT COUNT(*) as count FROM users';
    connection.query(q, function (error, results) {
        if (error) throw error;
        let msg = "We have " + results[0].count + " users";
        res.send(msg);
    });
   });