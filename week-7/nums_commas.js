// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Eric Gumerlock.

// Pseudocode
//get an input of an integer
//convert to string
//split into individual digits (it is now an array)
//start at right edge, move three digits, if there is another digit, add a comma before it
//join digits into one large string
//print to screen


// // Initial Solution

// function separateComma(x){
//   var input_array = x.toString().split("").reverse();
//   if (input_array.length <4) {
//     return x
//   };

//   for (var i = 3; i <= input_array.length-1; i += 4){

//    input_array.splice(i, 0, ","); //unless there's no more digits


//   // output_array.unshift(input_array.pop())
// //[x,y,z,a]
//     // if i%3 == 1 || 2 pop from input_array, shift to output_array
//     // if i%3 == 0, and there is additional stuff in the array, pop from input_array, shift to output_array, shift a comma to output_array

//     };
//   var output_array = input_array.reverse().join("")

//   //console.log(output_array)

//   return output_array
// };

// console.log(separateComma(12444443))



// Refactored Solution
function separateComma(x){
  var input_array = x.toString().split("");
  for (var i = 3; i <= input_array.length-1; i += 4){
    input_array.splice(-i, 0, ",");
    };
  var output_array = input_array.join("")
  console.log(output_array)
  return output_array
};


// Your Own Tests (OPTIONAL)

separateComma(123)
separateComma(12333)
separateComma(12)
separateComma(123332)
separateComma(123454)
separateComma(1234)

// Reflection

// What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
//the basic ideas were similar to ruby, even most of the methods. Some of the syntax was different, of course.

// What did you learn about iterating over arrays in JavaScript?
//it is similar to Ruby, although it appears that we can't access array elements using negative index numbers in JS

// What was different about solving this problem in JavaScript?
//mostly the syntax

// What built-in methods did you find to incorporate in your refactored solution?
//split, length, join, and splice