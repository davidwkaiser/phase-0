# Factorial

# I worked on this challenge [with:Milorad Felbapov].


# Your Solution Below
def factorial(number)
  if number == 0 || number == 1
    return 1
  else
    result = 1
    while number > 1
      result = result * number
      number -= 1
    end
  end
  return result
end