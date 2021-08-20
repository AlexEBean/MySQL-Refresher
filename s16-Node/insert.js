const q = 'INSERT INTO users (email) VALUES ("rusty_the_dog@gmail.com")';
 
connection.query(q, function (error, results, fields) {
  if (error) throw error;
  console.log(results);
});

const person = {
    email: faker.internet.email(),
    created_at: faker.date.past()
};
 
const end_result = connection.query('INSERT INTO users SET ?', person, function(err, result) {
  if (err) throw err;
  console.log(result);
});