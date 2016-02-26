# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.

=begin
# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
create an array with b-i-n-g-o as values
generate a random number between 0 and 4 inclusive
generate a random number between 1 and 100, inclusive
use the first number as an index for an array, take it's value, and concat the
value of the second random number, this is our "call"

# Check the called column for the number called.
iterate over the nested data structure, using the index (0-4) of the letter,
to indicate the place in each array to check
if a number in the correct place in the bing card array matches the randomly-generated
  number above, replace it with an X, otherwise move on.

# If the number is in the column, replace with an 'x'
  if the place in the data structure equals the number called, assign that place in the structure the value "X"

# Display a column to the console
iterate over the array of arrays, puts the value of that index for each array to the screen

# Display the board to the console (prettily)
iterate over the array of arrays, puts each array on one line.
=end


# Initial Solution

# class BingoBoard
#   attr_reader :bingo_board, :letter, :number

#   def initialize(board)
#     @bingo_board = board
#     @bingo = ['B', 'I', 'N', 'G', 'O']
#   end

#   def call
#     @letter = rand(5)
#     @number = rand(100) + 1
#     puts "Does anyone have #{@bingo[@letter]}#{@number}?"
#     check(@letter, @number)
#   end

#   def check(let, num)
#     found = false
#     for row in @bingo_board
#       if row[let] == num
#         row[let] = "X"
#         found = true
#       end
#     end
#     if found==true
#       puts "Found it!"
#       puts "Here is the new board!"
#       for row in @bingo_board
#         print "#{row}\n"
#       end
#     else
#       puts "nope"
#     end
#   end
# end

# Refactored Solution
class BingoBoard
  attr_reader :bingo_board, :letter, :number

  def initialize(board)
    @bingo_board = board
    @bingo = ['B', 'I', 'N', 'G', 'O']
  end

  def call
    @letter = rand(5)
    @number = rand(100) + 1
    puts "Does anyone have #{@bingo[@letter]}#{@number}?"
    check(@letter, @number)
  end

  def check(let, num)
    found = false
    @bingo_board.each do |row|
      if row[let] == num
        row[let] = "X"
        found = true
      end
    end
    if found==true
      puts "Found it!"
      puts "Here is the new board!"
      @bingo_board.each {|row| print "#{row}\n"}
    else
      puts "nope"
    end
  end

end

#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
2.times {new_game.call}


=begin
#Reflection

How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
not very hard, and I think my pseudo-coding is getting more useful to me. I now like to copy it into the program
and then replace it bit by bit with real code.

What are the benefits of using a class for this challenge?
For this one challenge, the benefits are minimal, in fact, it would probably be easier to process with driver code only
However, if we wanted to set up a bingo night, with 50 players, each with multiple
bingo boards, then we would definitely want to
create and test via class variables and methods

How can you access coordinates in a nested array? What methods did you use to access and modify the array?
in this case, the target number was in a certain column (i.e., if we generated "B55", we would
want to see if 55 was in the first column, the "B" column). To do this, I iterated over each row and tested to see
if the element at row[index] equals the number we are searching for.
  If so, I assigned used assignment to replace that number with an "X"

Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
It wasn't truly new, but I used .each several times. It's good to get familiar with it. Similarly, it was nice to practice using classes, class methods and attr, I am still getting comfortable with them.

How did you determine what should be an instance variable versus a local variable?
Anything that had to be used across multiple methods was an instance variable, if it was
only used in one method, it was a local variable.

What do you feel is most improved in your refactored solution?
Fairly minimal. I replaced a FOR loop with an EACH loop, it was cleaner. I also removed some junk
from the original, although I tend to do that along the way, so it didn't need much pruning.


=end



# create a legal bingo board

#initial solution
# def makeboard(legal_bingo_board)
#   5.times do
#     legal_bingo_board.push([])
#   end
#   for x in 0..4
#     legal_bingo_board[x][0]=(rand(15)+1)
#     legal_bingo_board[x][1]=(rand(15)+16)
#     legal_bingo_board[x][2]=(rand(15)+31)
#     legal_bingo_board[x][3]=(rand(15)+46)
#     legal_bingo_board[x][4]=(rand(15)+61)
#   end
#   return legal_bingo_board
# end

# new_board = makeboard([])
# new_board.each do |x|
#   p x
# end

=begin
refactored solution
def makeboard(legal_bingo_board)
  5.times do
    legal_bingo_board.push([])
  end
  for y in 0..4
    for x in 0..4
      legal_bingo_board[x][y]=rand(15)+1+y*15
    end
  end
  legal_bingo_board[2][2] = "F"
  return legal_bingo_board
end

new_board = makeboard([])
new_board.each do |x|
  p x
end
=end