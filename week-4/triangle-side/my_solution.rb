# I worked on this challenge [with: Daniel Homer].


# Your Solution Below

def valid_triangle?(a, b, c)
  test = [a, b, c].sort!
  if test[0] + test[1] > test[2]
    true
  else
    false
  end
end