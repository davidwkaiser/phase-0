// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
var name = "Dave"
console.log(name, "is a great programmer!" )
console.log("****")

// //favorite food program:
// var food = prompt("What is your favorite food?");
// console.log("Hey that's mine too!");

// // Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
console.log("FizzBuzz: ")
for (var counter = 1; counter <=100; counter +=1) {
if (counter % 15 == 0) console.log("FizzBuzz");
else if (counter % 3 == 0) console.log("Fizz");
else if (counter % 5 == 0) console.log("Buzz");
else console.log(counter)
}

// Functions

// Complete the `minimum` exercise.
var min = function(x,y) {
  if (x<y) return x;
  else return y;
}
console.log("****")
console.log("MIN:")
console.log(min(4,5))
console.log(min(5,5))
console.log(min(40,5))
console.log(min(40,50))
console.log("****")

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.
var me = {
  name: "Dave",
  age: 47,
  favorite_foods: ["chips & salsa", "bacon", "venison"],
  quirk: "is a peacock"
}


console.log("my name is", me.name)
