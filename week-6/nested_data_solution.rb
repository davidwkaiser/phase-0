# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================
p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
p nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

#p number_array.map do |num|
 # num += 5
#end

# x = number_array.each do |num|
#   if num.kind_of?(Array)
#      num.map {|inner| inner += 5; p inner}

#   else
#      num += 5
#     p num
#    end

#  end

# p x

# number_array.map! do |num|
#   if num.kind_of?(Array)
#      num.map {|inner| inner += 5}
#   else
#      num += 5
#    end
#  end

number_array.map! do |num|
  num.kind_of?(Array) ? num.map {|inner| inner += 5} : num += 5
end

p number_array

# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

=begin
ORIGINAL SOLUTION:

startup_names.map! do |element|
  if element.is_a?(String)
    element += "ly"

  elsif element.is_a?(Array)
    element.map! do |inner|
      if inner.is_a?(Array)
        inner.map! do |inside_inner|
        inside_inner += "ly"
        end
      else
        inner += "ly"
      end
  end
  end
end

p startup_names

=end

#refactored solution:

def chunk(element)
  element.is_a?(String) ? element += "ly" : element.map!  {|inner| chunk(inner)}
end

startup_names.map! do |name|
  chunk(name)
end
p startup_names



=begin
What are some general rules you can apply to nested arrays?
1> it's possible to keep stacking the index numbers
2> recursion is important, especially when you don't know the data structure ahead of time
3> we need methods to look at each element in an array to determine what it is
before we know what to do with it. Is this element an integer? another array? hash?

What are some ways you can iterate over nested arrays?
probably the simplest to implement is depth-first recursion. we could do
  breadth first recursion, but that would require tracking the additional
  branches. Very doable, but more complex, it seems.
more concretely, we can use .each, .map, a for loop or a while loop

Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
we used is_a?() to determine if an element was a sting or array
we found that .map! was useful for making destructive changes to arrays, nested or otherwise


=end
