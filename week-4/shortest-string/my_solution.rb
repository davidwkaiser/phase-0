# Shortest String

# I worked on this challenge by myself.

# shortest_string is a method that takes an array of strings as its input
# and returns the shortest string
#
# +list_of_words+ is an array of strings
# shortest_string(array) should return the shortest string in the +list_of_words+
#
# If +list_of_words+ is empty the method should return nil

#Your Solution Below
def shortest_string(list_of_words)
  if list_of_words.length == []
    nil
  else
    shortest = list_of_words.pop
    while list_of_words.length > 0
      x = list_of_words.pop
      if  x.length < shortest.length
        shortest = x
      end
    end
    return shortest
  end
end