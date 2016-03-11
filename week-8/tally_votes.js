// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with:
// This challenge took me [#] hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
};


/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...
  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }
*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode
//create a function to iterate over the "votes" object
//tally votes for each candidate's name
//if candidate is not already in voteCount object, add, with one vote
//if already there, increment vote count by 1






// __________________________________________
// Initial Solution
/*

// Set counter for number of votes to 1 if the name occurs in the following functions.
var count = 1;

// Add candidate name and number of votes to voteCount. Increase number of votes by one for each occurance of a candidate's name.
for (var name in votes) {
  var cand = votes[name]['president'];
  if (voteCount['president'][cand] >= 1) {
    voteCount['president'][cand]++;
  }
  else {
    voteCount['president'][cand] = count;
  }
}
for (var name in votes) {
  var cand = votes[name]['vicePresident'];
  if (voteCount['vicePresident'][cand] >= 1) {
    voteCount['vicePresident'][cand]++;
  }
  else {
    voteCount['vicePresident'][cand] = count;
  }
}
for (var name in votes) {
  var cand = votes[name]['secretary'];
  if (voteCount['secretary'][cand] >= 1) {
    voteCount['secretary'][cand]++;
  }
  else {
    voteCount['secretary'][cand] = count;
  }
}
for (var name in votes) {
  var cand = votes[name]['treasurer'];
  if (voteCount['treasurer'][cand] >= 1) {
    voteCount['treasurer'][cand]++;
  }
  else {
    voteCount['treasurer'][cand] = count;
  }
}

// Set a variable that keeps track of votes to 0.
var voteTotal = 0;

// Set a condition where a candidate's number of votes exceeds the previous instance of voteCount, their name is set as the value of the role they are running for in officers.
for (var name in voteCount['president']) {
  if (voteCount['president'][name] > voteTotal) {
    voteTotal = voteCount['president'][name];
    officers['president'] = name;
  }
}
voteTotal = 0;
for (var name in voteCount['vicePresident']) {
  if (voteCount['vicePresident'][name] > voteTotal) {
    voteTotal = voteCount['vicePresident'][name];
    officers['vicePresident'] = name;
  }
}
voteTotal = 0;
for (var name in voteCount['secretary']) {
  if (voteCount['secretary'][name] > voteTotal) {
    voteTotal = voteCount['secretary'][name];
    officers['secretary'] = name;
  }
}
voteTotal = 0;
for (var name in voteCount['treasurer']) {
  if (voteCount['treasurer'][name] > voteTotal) {
    voteTotal = voteCount['treasurer'][name];
    officers['treasurer'] = name;
  }
}


*/
// __________________________________________
// Refactored Solution

for (var name in votes) {
  var count = 1;
  for (var office in votes[name]) {
    var cand = votes[name][office];
    if (voteCount[office][cand] >= 1) {
      voteCount[office][cand]++;
    }
    else {
      voteCount[office][cand] = count;
    }
  }
};


for (var office in voteCount){
  var voteTotal = 0;
  for (var name in voteCount[office]) {
    if (voteCount[office][name] > voteTotal) {
      voteTotal = voteCount[office][name];
      officers[office] = name;
    }
  }
};





// __________________________________________
/*
Reflection
What did you learn about iterating over nested objects in JavaScript?
1> they can be very complex
2> build up the pieces, of both function and notation, from smaller bits
3> it is often easier to build a series of brute force functions, then abstract into a loop,
than to try to create the loop at first
4> get the dot vs bracket notation right

Were you able to find useful methods to help you with this?
Although I did not use them at the end, I found .sort, .keys

What concepts were solidified in the process of working through this challenge?
Syntax and notation of datastructues was the big one here.



*/


// __________________________________________
// Test Code:  Do not alter code below this line.




function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)

