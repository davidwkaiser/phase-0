# Longest String

# I worked on this challenge by myself.

# longest_string is a method that takes an array of strings as its input
# and returns the longest string
#
# +list_of_words+ is an array of strings
# longest_string(list_of_words) should return the longest string in +list_of_words+
#
# If +list_of_words+ is empty the method should return nil


# First Solution Below
# def longest_string(list_of_words)
#   if list_of_words.length == []
#     nil
#   else
#     longest = list_of_words.pop
#     while list_of_words.length > 0
#       x = list_of_words.pop
#       if  x.length > longest.length
#         longest = x
#       end
#     end
#     return longest
#   end
# end

#refactored solution
def longest_string(list_of_words)
  if list_of_words.length == []
    nil
  else
    longest = list_of_words.pop
    list_of_words.each do |word|
      if  word.length > longest.length
        longest = word
      end
    end
    return longest
  end
end
