# Numbers to Commas Solo Challenge

# I spent [2] hours on this challenge.

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

#I do not have a refactored solution. s kludgy as my solution is, I don't know how to simplify it, although I am sure it is possible.

# 3. Reflection
# What was your process for breaking the problem down? What different approaches did you consider?
# Was your pseudocode effective in helping you build a successful initial solution?
#I tried to think of each step in the process, what needed to happen, and list it out. I find that often I am too general, my pseudocode looks like "moving from the right, after each third digit, add a comma unless it is the first digit in the string," which is way to vague. How do I make that happen? ".insert?" convert to an array? pop? My psuedocode would serve me better if I would be less "hand-wavey" and more detailed.

# What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
# Do you feel your refactored solution is more readable than your initial solution? Why?
#hard to answer, I haven't managed to refactor the solution, although I am sure it can be done. My original solution mostly used methods I was aware of, although I needed to look up the exact syntax (unshift, for example). Clearly, it can be simpler, at the very least using regex, which are supposed to avoid. As kludgy as it is, I don't know how to refactor this down.

# How did you initially iterate through the data structure?
#I initially tried to use two for loops, one to track how many commas were needed and one to track the place in the string, and iterate from right to left, using ".insert" to put the comma in place every third place (as long as something remained to go in front of it). This failed, I'm still not entirely sure why, but the output resembled neither the input string nor the solution with commas. I find that when iterating over a data structure whose length cannot be predicted, "pop" works quite well, as long as it is OK that pop is destructive.


