# I worked on this challenge [by myself, with: ].


# Your Solution Below

def valid_triangle?(a, b, c)
  test = [a, b, c].sort!
  if test[0] + test[1] > test[2]
    true
  else
    false
  end
end