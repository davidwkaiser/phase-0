# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: an array of strings
# Output: "sides" method outputs number of sides, "roll" method generates one of the strings randomly
# Steps:
#accept input when class is instantiated
#validate that the array has at least one string element (raise error if not)
#assign argument value to a variable
#method "sides" puts number of sides when called
#method "roll" generates a random string from the array and puts.



# Initial Solution

class Die
  def initialize(labels)
    unless labels.length  > 0
      raise ArgumentError.new("Array must have at least one item")
    end
    @labels = labels
    @sides = labels.length
  end

  def sides
    return @sides
  end

  def roll
    return @labels[rand(@sides)]
  end
end



# Refactored Solution

#I don't think I can factor it down much more simply.


#I found (and modified for arrays) this option for using an enumerator to generate random rolls of a die, but
#1> it seems more complicated than our current method and
#2> I don't fully understand the yield function yet

# def dice(labels)
#   Enumerator.new do |e|
#     loop do
#       e.yield labels[Random.rand(labels.length)]
#     end
#   end
# end


# Reflection
=begin

What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
The changes were minimal. I needed to tweak the flow control on the error
check to test for an non-empty array instead of a positive integer, I needed to add
another instance variable, @labels, to represent the array, and I needed to tweak
the randomizer, so that it didn't generate an integer as answer, it generated
an integer which became the index (starting from 0) of the array


What does this exercise teach you about making code that is easily changeable or modifiable?
modular code is good. I will admit I actually cut and pasted my code from the first
 die method, then tweaked it, rather than start from scratch. I know this won't
 always be possible or preferable, but here it was.


What new methods did you learn when working on this challenge, if any?
What concepts about classes were you able to solidify in this challenge?

no new methods or classes, but any and all practice with classes and objects
is helpful. I understand the concept, but am still getting used to the implementation.

=end