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
      p :high
    elsif guess < @answer
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

How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?

When should you use instance variables? What do they do for you?

Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?

Why do you think this code requires you to return symbols? What are the benefits of using symbols?


=end

