# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? a positive integer
# What is the output? (i.e. What should the code return?) a string, with a number formatted with commas
# What are the steps needed to solve the problem?
# get the string
# convert to string
# moving from the right, after each third digit, add a comma unless it is the first digit in the string
# output string

# 1. Initial Solution
def separate_comma(number)
  numstring = number.to_s
  if numstring.length <= 3
    return numstring
  else
    array = numstring.chars.to_a
    answer = []
    counter = 0
    while array.length>0
      x = array.pop
      answer.unshift(x)
      counter +=1
      if counter % 3 == 0 && array.length > 0
        answer.unshift(",")
      end
    end
  return answer.join
  end
end

#puts separate_comma(12345678)

# 2. Refactored Solution




# 3. Reflection
# What was your process for breaking the problem down? What different approaches did you consider?
# Was your pseudocode effective in helping you build a successful initial solution?
# What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
# How did you initially iterate through the data structure?
# Do you feel your refactored solution is more readable than your initial solution? Why?
