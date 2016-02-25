# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: the game is initialized with an integer. other input include the "guesses" that the "player" makes
# Output: the program outputs if the guess is high, low or correct, relative to the target
# Steps:
# create a class GuessingGame
# assign "solved?" to false
# allow this class to be instantiated with an integer (target)
# accept input of an integer
# compare input to target, evaluate and print high low or correct.
# if correct, assign solved? to true, else leave it as false.
# when solved? = true, end the game and congratulate the player


# Initial Solution

class GuessingGame
  attr_reader  :answer, :solved
  def initialize(answer)
    @answer = answer
    @solved = false
  end

  def guess(guess)
    @guess = guess
    if @guess > @answer
      @solved = false
      p :high
    elsif @guess < @answer
      @solved = false
      p :low
    else
      @solved = true
      p :correct
    end
  end

  def solved?
    @solved == true ? true : false
  end
end

=begin
game = GuessingGame.new rand(100)
last_guess  = nil
last_result = nil

until game.solved?
  unless last_guess.nil?
    puts "Oops!  Your last guess (#{last_guess}) was #{last_result}."
    puts ""
  end

  print "Enter your guess: "
  last_guess  = gets.chomp.to_i
  last_result = game.guess(last_guess)
end

puts "#{last_guess} was correct!"
=end

=begin

game = GuessingGame.new(15)
until game.solved?
  puts "What is your guess?"
  check = gets.chomp.to_i
  game.guess(check)
end
=end



  # Make sure you define the other required methods, too




# Refactored Solution






# Reflection
=begin

How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?When should you use instance variables? What do they do for you?
They are used when the values they represent are assigned to a specific instance
of the class. if we have a class Person, then each instance can have a name
which could be stored in an instance variable. By contrast, a class variable
might be preferable if we wanted to know how many people we were tracking.
We might know we have 50 employees (class variable, since it's not associated
with one instance), and that employee 1 = John, employee 2 = Mary (instance)


Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
Flow control is used when we need to make decisions about what code to execute, or how many
times to execute it. It was pretty straightforward, I had no trouble.


Why do you think this code requires you to return symbols? What are the benefits of using symbols?

  the benefits are that symbols can't be changed at run-time, and it delivers
  faster performance because a symbol is fixed. AS to why we are using it,
  I am not sure, but my guess is that it is easier (or possible) to test in this way,
  and if we didn't use symbils, then testing with rspec would be harder.


=end

