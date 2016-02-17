# Pad an Array

# I worked on this challenge [with Ryan Wilkins ]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?) an array of length minimum, padded with default as needed
# What are the steps needed to solve the problem?

#Get input (initial array, minimum (non-negative integer), default = nil)
#define the method
#if minimum = 0, just return original array
#if min <= length of array
#return original array
#otherwise, determine how much padding is necessary
#add padding to end of array until minimum is met
#return new array



# 1. Initial Solution
# def pad!(array, min_size, value = nil) #destructive
#   while array.length < min_size
#      array.push(value)
#   end
#   p array
# end

# def pad(array, min_size, value = nil) #non-destructive
#   new_array = array
#   while new_array.length < min_size
#      new_array.push(value)
#   end
#   p new_array
# end


# 3. Refactored Solution
def pad!(array, min_size, value = nil) #destructive
  while array.length < min_size
     array.push(value)
  end
  p array
end



def pad(array, min_size, value = nil) #non-destructive
  new_array = Array.new(array)
  if min_size < array.length
    return new_array
  else
    new_array.concat((1..min_size-array.length).collect { value })
  end
  p new_array
end



# 4. Reflection
# Were you successful in breaking the problem down into small steps?
#   Yes, although the temptation to write in real code (or near code) is strong

# Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
#   Pretty easy, no major challenges. Had to play with the syntax to get it right.

# Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
#   Yes, we originally used a WHILE loop with PUSH. It worked quite well because it addressed the problem: it determined the gap between what we nad and what we needed and iterated across that until the problem was solved. We had to play a bit to make the non-destructive method work. at first, we tried new_array = array, but that threw errors until we changed it to new_array = Aray.new(array), thus forcing the variable new_array to be an instance of the array object, instead of just equal to whatever the original parameter array was (good learning there!)

# When you refactored, did you find any existing methods in Ruby to clean up your code?
#   We thought we were done, then saw the note about enumerables, we took that as a challenge to figure out how to do it with enumerables. That was fun, although our original solution was pretty elegant.

# How readable is your solution? Did you and your pair choose descriptive variable names?
#   It's hard to judge readability of our own code. I think it's pretty readable. The variable names are descriptive and simple.


# What is the difference between destructive and non-destructive methods in your own words?
#   Destructive methods change the recipient of the message, non-destructive do not, thus, .capitalize will create a new variable and output that, where .capitalize! will permanently change the original variable.