# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: credit card number
# Output: true false response on card validity
# Steps:
#validate has 16 numbers, otherwise raise error
#convert to array (using split)(may need to convert to string)
#every other number, double it (may require conversion to integer), and if necessary, split it again
#converat whole thing to array of integers
#sum it up
#if sum % 10 == 0, return true, else false


# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

class CreditCard
  attr_reader :card_number

  def initialize(number)
    @card_number = number.to_s.split(//)
    unless card_number.length == 16
      raise ArgumentError.new ("Card number must be 16 digits")
    end
    p card_number
  end

  def check_card
    #double every other number
    p numbers_to_double =  card_number.values_at(* card_number.each_index.select {|index| index.even?})
    p numbers_to_double.map! {|i| (i.to_i * 2).to_s}
    p numbers_stay_same = card_number.values_at(* card_number.each_index.select {|index| index.odd?})
    all_digits = numbers_to_double.concat(numbers_stay_same)
    all_digits.map! do |index|
      if index.length == 2
        index.split(//)
      else
         index
      end
    end
    all_digits.flatten!

    sum = 0
    for x in all_digits
      sum += x.to_i
    end

    p sum

    if sum % 10 == 0
      p true
      else p false
    end
  end

end

# DRIVER CODE

new_card = CreditCard.new(2445678901234569)
new_card.check_card



# Refactored Solution








# Reflection
# What was the most difficult part of this challenge for you and your pair?
# What new methods did you find to help you when you refactored?
# What concepts or learnings were you able to solidify in this challenge?

