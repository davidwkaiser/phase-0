# Concatenate Two Arrays

# I worked on this challenge by myself.


# Your Solution Below (this is REALLY ugly, I wasn't sure if I could use PUSH, so I didn't)

# def array_concat(array_1, array_2)
#   x = array_1.length
#   for y in 0..array_2.length-1
#     array_1[(x+y)] = array_2[y]
#   end
#   array_1
# end

#refactored with built-in methods
def array_concat(array_1, array_2)
  array_1.concat(array_2)
end