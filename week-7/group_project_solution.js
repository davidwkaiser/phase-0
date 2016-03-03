var oddLengthArray  = [1, 2, 3, 4, 5, 5, 7]
var evenLengthArray = [4, 4, 5, 5, 6, 6, 6, 7]

var mean = function (input_array){
  if (input_array.length % 2 === 1){
    var index = Math.floor(input_array.length / 2)
    return input_array[index]}
  else
    var index = input_array.length / 2
    return ((input_array[index-1]+input_array[index]) / 2)
}


console.log(mean(oddLengthArray))
console.log(mean(evenLengthArray))

//not very DRY but it works