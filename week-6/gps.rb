# Your Names
# 1) Dave Kaiser
# 2) Li-Lian Ku

# We spent [1] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, num_of_guests)
#takes two args: item and number of ingredients
#sets up default values for variables
  servings = {"cookie" => 1, "cake" =>  5, "pie" => 7}

# error_counter = 3

# If item_to_make key value is nil, return our error
  if servings[item_to_make] == nil
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end
# # sets number of items
#   servings.each do |food|
#     if servings[food] != servings[item_to_make]
#       error_counter -= 1
#     end
#   end
# #iterates over whole library of items, tracks error count
#   if error_counter > 0
#
#   end
# raises error if each item in lib fails an equality
# serving_size = servings.values_at(item_to_make)[0]   #[1]

#if servings[item] > guests, tell us we have extra food
# if = guests tell us it's spot on
#if less than guests tell us we don't have enough food

  if servings[item_to_make] > num_of_guests
    "Calculations complete, you have #{servings[item_to_make] - num_of_guests} left over servings"
  elsif servings[item_to_make] == num_of_guests
    "Spot on!"
  else
    "You need to go the store, you need #{num_of_guests - servings[item_to_make]} servings of #{item_to_make}"


#   remaining_ingredients = num_of_guests % serving_size
# #accesses the serving size of the item
#   case remaining_ingredients
#   when 0
#     return "Calculations complete: Make #{num_of_guests / serving_size} of #{item_to_make}"
#   else
#     return "Calculations complete: Make #{num_of_guests / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"
  end
end
#lets us know if (and how many) remaining ingredients we have


p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection

# What did you learn about making code readable by working on this challenge?
# give variables meaningful names
# make things as simple as possible
# make sure you know what you are returning

# Did you learn any new methods? What did you learn about them?
#no new methods, just good practice at reading others' code

# What did you learn about accessing data in hashes?
# when working with each ~ do to use a key value pair of variables

# What concepts were solidified when working through this challenge?
# that reading code is as important as writing
#  it is important to know where I'm trying to get to, just diving in and fixing or writing is often counterproductive


