/*
As a busy parent, I need to create shopping lists weekly
I need to be able to add items to the list, with a quantity
I need to be able to remove an item from the list if I no longer need it.
I need to update the quantities based on my meal plans and my inventory
I need to print the list so I can put it in my pocket and use it while shopping
*/

//pseudocode
/*
create a new list (object). Why? just like Ruby hash, it seems to make the most sense. Also, I need practice
have a function for adding items to list
have another function for updating quantities.
one more function for removing items
print it, nice and pretty

*/





//initial solution

 function create_list(items){
  var list = new Object();
  split_items = items.split(" ");
  while (split_items.length > 0) {
    current_item = split_items.shift()
    list[current_item] = 1;
  }
  return list
};

function add_item(item, quantity) {
  quantity = typeof quantity !== 'undefined' ? quantity : 1;
  if (item in shopping_list){
    shopping_list[item] += quantity}
  else {
    shopping_list[item] = quantity}
}

function remove_item(item){
item in shopping_list ? delete shopping_list[item] : console.log(item + " is not on the list, dude")

}

function pretty_print(list){
  for (item in shopping_list) {
    console.log(item+ ": " + shopping_list[item])
  }

}


var shopping_list = create_list("apple pizza watermelon")

console.log(shopping_list)

add_item("apple", 4)
add_item("banana")

console.log(shopping_list)

remove_item("apple")
remove_item("turkey")

console.log(shopping_list)
console.log("****")
pretty_print(shopping_list)


//refactor

//reflect
/*
What concepts did you solidify in working on this challenge? (reviewing the passing of information, objects, constructors, etc.)


What was the most difficult part of this challenge?


Did an array or object make more sense to use and why?



*/


