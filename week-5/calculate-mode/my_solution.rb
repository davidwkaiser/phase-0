# Calculate the mode Pairing Challenge

# I worked on this challenge [with Emmet ]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input? an array of numbers of strings
# What is the output? (i.e. What should the code return?) the mode (i.e. most common element) from the input
# What are the steps needed to solve the problem?
#Get array from input
#initialize a hash
#iterate over array
#for each item, if it already exists, increment the value by 1, if not, add key and value of one to hash
#sort hash by max value
#output result of search


# 1. Initial Solution
def mode(array)
  counter = Hash.new
  while array.length >0
    x = array.pop
    if counter.has_key?(x)
      counter[x] +=1
    else
      counter[x] = 1
    end
  end
p counter.select { |k, v| v == counter.values.max }.keys.sort
end


# 3. Refactored Solution
 def mode(array)
  counter = Hash.new
  while array.length >0
    x = array.pop
    counter.has_key?(x) ? counter[x] +=1 : counter[x] = 1
  end
  p counter.select { |k, v| v == counter.values.max }.keys.sort
end



# 4. Reflection

# Which data structure did you and your pair decide to implement and why?
#We decided to use a hash. It seemed natural, since we were going to create pairs of item from the array + number of times it appeared in the array, that seemed to match the key / value idea of an array

# Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?
#About the same. This one felt simpler to pseudocode, ntos sure if that is because of the challenge or because I'm gaining experience and confidence.

# What issues/successes did you run into when translating your pseudocode to code?
#creating the hash was easy. populating it was easy. sorting it was easy, the trick was what to do when there was more than one mode. If we assume one mode, we just sort and take the first value, easy, but if there are two or more modes, that fails. We addressed this problem with the .select hash method. We then had to sort this, after we got a failure back on a test. The test suite wanted ["banana, "cherry"] and we gave it ["cherry", "banana"]. Easy enough to fix.

# What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
#We used POP to iterate over the array, and an if/else statement that would increment the value if the key already existed, or add the key with a value of 1 if it did not exist. Then we used the .select method to create a sorted array with the output. Last night in a GPS, our guide suggested using a ternary if/then when we had a simple control flow, so we refactored one of these into our answer and this shortened it quite a bit.