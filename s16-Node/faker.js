// node s16-Node/faker.js

// for(let i = 0; i < 500; i++){
//     console.log("HELLO WORLD!");
//   }

// Run npm i faker in bash

const faker = require('faker')

// Print a random email

console.log(faker.internet.email()); 

// Print a random past date

console.log(faker.date.past().toString());

// Print a random city

console.log(faker.address.city()); 

function generateAddress(){
  console.log(faker.address.streetAddress());
  console.log(faker.address.city());
  console.log(faker.address.state());
}

generateAddress(); 
