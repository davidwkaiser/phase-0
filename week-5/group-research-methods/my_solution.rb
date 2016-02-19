# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  new_array = Array.new
  source.each do |x|
    if x.is_a?(String) == true
      if x.include? thing_to_find
        new_array << x
      end
    end
  end
  p new_array
end

def my_hash_finding_method(source, thing_to_find)
  new_array = Array.new
  source.each do |key, value|
    if value.is_a?(Integer) == true
      if value == thing_to_find
        new_array << key
      end
    end
  end
  p new_array
end

#my_array_finding_method(i_want_pets, "o")
#my_hash_finding_method(my_family_pets_ages, 3)


# Identify and describe the Ruby method(s) you implemented.
#      I used if statements, methods for arrays and methods for hashes.
#      To add values to the array, I used the << method to push objects to
#      a new array.
# Teach your accountability group how to use the methods
#      When you're looking to find values in an array or hash, and you need to
#      collect those findings into a new array, you  first want to declare that
#      new array. Next, using an each method you can iterate an action needed
#      for each value. Once you narry down th specific pieces you need, you want
#      to push these to the new array you created in the beginning. And you're
#      done!
# Share any tricks you used to find and decipher the Ruby Docs
#      I drew inspiration and guidelines from week 4's challenges to tackle this
#      challenge. I always prefer reading http://ruby-doc.org/ in conjunction
#      with Well Grounded Rubyist.

# Person 2
def my_array_modification_method!(source, thing_to_modify)
    first_integer = []
    first_integer.push(i_want_pets[2])
    i_want_pets.delete_at(2)
    i_want_pets.insert(2, (first_integer.join.to_i + thing_to_modify) )

    second_integer = []
    second_integer.push(i_want_pets[7])
    i_want_pets.delete_at(7)
    i_want_pets.push(second_integer.join.to_i + thing_to_modify)

end



def my_hash_modification_method!(source, thing_to_modify)
    my_family_pets_ages.each do |k,v| my_family_pets_ages[k] = v + thing_to_modify end

end
=begin
# # Identify and describe the Ruby method(s) you implemented.
For the my_array_modifications_method:
I used . push to push the 2nd indexed integer into an empty array.
I then deleted the 2nd integer.
Then I re-inserted the summation of the altered first_integer array & things_to_modify.
This enables the def to use any integer and place it at the right place as well as modify it based on the original.
.for my_hash_modification_method:
I simply changed each value of the key and added the integer (things_to_modify) directly to it.
This directly alters the my_family_pets_ages hash.
=end

# Person 3
def my_array_sorting_method(i_want_pets)
  pets_sorted = i_want_pets.sort_by {|x| x.to_s}
end
p my_array_sorting_method(i_want_pets)




def my_hash_sorting_method(my_family_pets_ages)
   hash_sorted = my_family_pets_ages.sort_by {|x,y| y }
end
p my_hash_sorting_method(my_family_pets_ages)

# Identify and describe the Ruby method(s) you implemented.
# sort_by This method allowed me to sort the array and hash based on a comparison method I provided in the block, instead of using the <=>. sort_by only requires you to show it how to treat one item, and also allows you to convert objects within the block.
# to_s This method converts objects into strings
#
# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
# I implemented sort_by which is a concise way # to sort a method with a code block. It always takes a block, and only requires that you show it how to treat one item in the collection and then it figures out that you want to do the same thing to both items every time it compares a pair of objects. The code in the block is used to sort, instead of the <=>. # This comes in handy when the objects being sorted are in different classes, such as in this situation where the array has both strings and integers to sort. # By default, strings and integers don't know how to compare themselves to each other, so we must convert them first. # I chose to convert them into strings with to_s method. Note that the elements in the output will be the same as the input, meaning that both strings and integers went in, and strings an integers will come out, despite the fact that I did the to_s conversion within # the sort_by block. However, the new array is ordered as if they were all strings. For the hash, I also implemented sort_by and this time provided two arguments in the block to map the hash into, and then specified # that I wanted it to sort by the value. This resulted in a new array filled with the key value pairs in order from # smallest value to largest. Sort_by acted non-destructively on its own, so I did not need to # take extra precaution to avoid this.



# Release 3: Reflect!
#Share any tricks you used to find and decipher the Ruby Docs
# I like to identify the class I am working with and then go through the left side to see if anything sounds like it could be a good fit. Once I have chosen a method, I like to go to irb and test it out a bit to see it in action.

# What did you learn about researching and explaining your research to others?
# I learned that thouroughly explaining what the docs are communicating to someone else can be tricky. I think it is helpful to use other resources as well that go more in depth. Explaining my research to others actually has really helped me solidify the concepts.





# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.delete_if {|x| x.to_s.include? thing_to_delete}
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.delete_if { |k,v| k == thing_to_delete }
end

#my own tests:
#puts my_array_deletion_method!(i_want_pets, "t")
#puts my_hash_deletion_method!(my_family_pets_ages, "George")

# Identify and describe the Ruby method(s) you implemented.
#For array, i use the built-in Ruby method .delete_if, which iterates over the array or hash, and if the element includes the thing to delete (using the method include? after converting the element to a string with to_s), it meets the logic and it is deleted. I used the .reject method at first, but this returns nil if nothing is deleted, whereas delete_if returns an enumerator
#Here are examples of the syntax from the docs:
# Array:
# a = [ "a", "b", "c" ]
# a.delete_if {|x| x >= "b" }   #=> ["a"]

# The syntax for a hash is similar:
# Hash
# h = { "a" => 100, "b" => 200, "c" => 300 }
# h.delete_if {|key, value| key >= 200 }   #=> {"a"=>100}
#
#Lastly, as far as the docs, I need to see examples to really get it, if they just tell, but don't show, it doesn't click for me, and sometimes the ruby docs tell but don't show, so I keep digging on google and check out stack overflow or somewhere else



# Person 5
def my_array_splitting_method(source)
  split_source = source.partition{|object| object.is_a?(Fixnum)} #This creates an new array with the new_array[0] being an array of fixnum's. You can return array[1] for the other objects.
  p split_source
end

def my_hash_splitting_method(source, age)
   split_source = source.partition {|key,value| value < age}
   p split_source
end

# Identify and describe the Ruby method(s) you implemented.
# I used the ruby method .partition. The partition method creates two arrays contained within one array.
# The first nested array contains all objects(for arrays) or keys(for hashes) that you select for.
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
#
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
#
#
#