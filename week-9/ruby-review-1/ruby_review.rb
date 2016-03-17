# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.

# Pseudocode
# take an input number
# run a fibonacci sequence until the current number exceeds input number
# put each number into an array of fibonacci numbers
# once we have reached or exceeded the input number, check if that number is in the array
# If it is, return true, else return false


# Initial Solution

# def is_fibonacci?(num)
#   puts "The number to be evaluated is #{num}"
#   current = 0
#   sequence = [0,1]
#   while current < num
#     current = sequence[-1] + sequence[-2]
#     sequence.push(current)
#     puts "the current number in the sequence is #{sequence[-1]}"
#   end
#   sequence.include?(num) ? true : false
# end

#puts is_fibonacci?(987)



# Refactored Solution
def is_fibonacci?(num)
  current = 0
  sequence = [0,1]
  until current >= num
    current = sequence[-1] + sequence[-2]
    sequence.push(current)
  end
  sequence.include?(num) ? true : false
end


# Reflection
=begin
What concepts did you review in this challenge?
rspec, .include?, while and until loops

What is still confusing to you about Ruby?
For the moment I feel comfortable with Ruby.
I am sure this is the calm before the storm.

What are you going to study to get more prepared for Phase 1?
Objects and classes.


=end
