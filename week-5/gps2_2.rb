# pseudocode
# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
# [fill in any steps here]
# set default quantity = 1
# print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]

# Method to add an item to a list
# input: item name and optional quantity
# steps: add item and quantity to hash
# output: updated hash

# Method to remove an item from the list
# input: item name
# steps: search for key, delete key / value pair
# output: updated hash

# Method to update the quantity of an item
# input: item name
# steps: search for key, update value
# output: updated hash

# Method to print a list and make it look pretty
# input: list name
# steps: iterate through hash, print Key + Value pair, then newline
# output: a list on screen with key value pairs on a line

# initial solution
def create_list(items)
   list = Hash.new()
   item_array = items.split(' ')
   item_array.each do |item|
       list[item] = 1
   end
   p list
end

# def add_item(list, item, quantity = 1)
#    if list.key?(item) == false
#        list[item] = quantity
#    else
#        list[item] += quantity
#    end
#    p list
# end

def add_item(list, item, quantity = 1)
   list.key?(item) ? list[item] += quantity : list[item] = quantity
   p list
end


def remove_item(list, item)
  list.delete(item)
  p list
end

def update_item(list, item, quantity = 1)
  list[item] = quantity
end

def print_list(list)
  list.each do | key, value |
    puts "#{key}:#{value}"
  end
end

list = create_list("Apples Oranges Grapes")
add_item(list, "beer", 6)
remove_item(list, "Grapes")
update_item(list, "Apples", 3)
print_list(list)


# What did you learn about pseudocode from working on this challenge? 1
#follow the guidelines when they exist.

# What are the tradeoffs of using Arrays and Hashes for this challenge?
#Hmm, we could create an array with item and quantity, but that seems complex, hashes were created for this.

# What does a method return?
#the last item that is caluculated / handled (although puts, for example, returns nil). We can force it to return something else by using return or p
# What kind of things can you pass into methods as arguments?
#strings, arrays, integers, floats, hashes, booleans, all sorts of things.

# How can you pass information between methods?
#by having one method call another. Also by having one method modify a data struture outside its scope that becomes the input for another method.

# What concepts were solidified in this challenge, and what concepts are still confusing?
#still getting used to ruby syntax, and built in methods. I know them conceptually, but not the specifics. (like I know the word, not the spelling)
