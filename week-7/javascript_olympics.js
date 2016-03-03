// JavaScript Olympics

// I paired [bwith Daniel Homer] on this challenge.

// This challenge took me [1] hours.



// Bulk Up
var athletes = [
  {name: "Sarah Hughes",
   event: "Women's Singles"},
  {name: "Samantha Kaiser",
  event: "Women's Volleyball"}
  ]

var win = function(athletes){
  for (var athlete in athletes) {
    athletes[athlete].win = athletes[athlete].name + " won the " + athletes[athlete].event + "!";
    console.log(athletes[athlete].win)
  }
}

win(athletes)


// Jumble your words

var s = "this is a string".split("").reverse().join("");

console.log(s)


// 2,4,6,8

function isEven(value) {
  return value % 2 === 0;
}
var filtered = [12, 5, 8, 130, 44].filter(isEven);

console.log(filtered)

// "We built this city"

function Athlete(name, age, sport, quote) {
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
}

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)


// Reflection
// What JavaScript knowledge did you solidify in this challenge?
//   We definitely solidified our understanding of how to call properties of objects inthe the first part. We picked up a few new methods (filter, reverse, join) and figured out that reverse is not a method for strings in JS.

// What are constructor functions?
//  Constructor functions are similar to the initialize method for Ruby classes, they allow us to make new objects and to attach properties to them.

// How are constructors different from Ruby classes (in your research)?
//  ruby classes are objects and they create objects, and therefore subject to inheritance, if we create a new class in Ruby it inherits methods and other behavrior from the superclass, this is not the default with constructors. This can be defined in JS using prototypes, but it must be done manually.


