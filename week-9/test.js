var test = new Object();
console.log(test.length);
test.zero = "this";
test.one = "that";
for (var keys in test){
console.log(keys);
console.log(test[keys])

}



