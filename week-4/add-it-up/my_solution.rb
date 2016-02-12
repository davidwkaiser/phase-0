# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [with: Dave Kaiser ].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# start with tracking value set to 0
# Get array as Input
# pop one item at a time from array, add to tracking value
# when done, print result

# Input:
# Output:
# Steps to solve the problem.


# 1. total initial solution


def total(x)
  counter=0
  while x.length>0
      counter += x.pop
  end
  return counter
end




# 3. total refactored solution



# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: array of words
# Output: a sentence on the form of a string
# Steps to solve the problem.
# get array

# loop over array
#   capitalize first letter of first word
# concatenate items (properly spacing them)
# add period at end
# print

# 5. sentence_maker initial solution

# def sentence_maker(x)
#   output = ""
#   output = output + x.shift.capitalize.to_s
#   while x.length>0
#     output = output + " " + x.shift.to_s
#   end
#   output = output + "."
# end


# 6. sentence_maker refactored solution

def sentence_maker(x)
  x.join(" ").capitalize! + "."
end