# Die Class 1: Numeric

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input: an integer > 0
# Output: "sides" method outputs number of sides, "roll" method generates a random number based on the number of sides.
# Steps:
#accept input when class is instantiated
#validate that it is a positive integer (raise error if not)
#assign argument value to a variable
#method "sides" puts number of sides when called
#method "roll" generates a random number based on number of sides and puts.

# 1. Initial Solution

class Die
  def initialize(sides)
    unless sides > 0
      raise ArgumentError.new("Input must be a greater than 0")
    end
    @sides = sides
  end

  def sides
    return @sides
  end

  def roll
    return rand(1...@sides+1)
  end
end



# 3. Refactored Solution

#I found this option for using an enumerator to generate random rolls of a die, but
#1> it seems more complicated than our current method and
#2> I don't fully understand the yield function yet

# s is the number of sides
# def dice(s)
#   Enumerator.new do |e|
#     loop do
#       e.yield Random.rand(s) + 1
#     end
#   end
# end





# 4. Reflection
# What is an ArgumentError and why would you use one?
# It indicates to the user that the argument given is not appropriate for the function
# We use it to stop the method before it tries to use an argument that won't work (like a die with a negative or zero number of sides.)
# What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
# Just rand. I had trouble at first because I didn't realize that rand(x...y) would generate a random nunmber that is EXCLUSIVE of the the last digit, y. I had to add "+1" to make it work
# What is a Ruby class?
# A class is a blueprint or template for creating objects

# Why would you use a Ruby class?
# when you expect to need lots of instances of objects based on a common template.
#   for example, if I wanted to create an address book, I might create a class
#     called "contact" or "person," to be instantiated with name, phone number, etc

# What is the difference between a local variable and an instance variable?
# a local variable lives inside a method and can't be used outside it.
# an instance variable lives inside that instance. A class variable lives above that, in the class.

# Where can an instance variable be used?
# inside an instance or in one of the methods inside that instance.