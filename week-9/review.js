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
/*
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
*/

//refactor
function shoppingList(name) {
    var tempName = name;
    var name = new Object();
    this.name = tempName
};

shoppingList.prototype.add_item = function add_item(item, quantity) {
    quantity = typeof quantity !== 'undefined' ? quantity : 1;
    if (item in this){
      this[item] += quantity}
    else {
      this[item] = quantity}
  };

 shoppingList.prototype.remove_item = function remove_item(item){
   item in this ? delete this[item] : console.log(item + " is not on the list, dude")
}

shoppingList.prototype.create_list = function create_list(items) {
  split_items = items.split(" ");
  while (split_items.length > 0) {
    current_item = split_items.shift()
    this[current_item] = 1;
  }
};

shoppingList.prototype.pretty_print = function pretty_print(){
  console.log(this.name)
  for (item in this) {
    if (typeof this[item] === 'number')
      {console.log(item+ ": " + this[item])}
  }
}



var today = new shoppingList("today");
today.create_list("orange sausage turkey")
today.add_item("apple")
today.add_item("apple")
today.add_item("banana")
today.remove_item("apple")
console.log(today)
console.log()
today.pretty_print()





//reflect
/*
What concepts did you solidify in working on this challenge? (reviewing the passing of information, objects, constructors, etc.)
1> Just getting practice in JS
2> JS objects and the prototype constructor

What was the most difficult part of this challenge?
Initializing the new list object and then making the first prototype work.
It was a lot of work and research, and it really helped to solidify
my grasp on JS objects.


Did an array or object make more sense to use and why?
Object, both because we have pairs of names and values, like in Ruby
And also because in JS we can have methods attached to an object,
just like classes in Ruby.


*/


