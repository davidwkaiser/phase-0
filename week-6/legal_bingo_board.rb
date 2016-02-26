# create a legal bingo board

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
