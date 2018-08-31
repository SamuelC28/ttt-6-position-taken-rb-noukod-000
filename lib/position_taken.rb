def display_board(board = [" ", " ", " ", " ", " ", " ", " ", " ", " "])
  puts 'display board'
#board output
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
# check for empty cells
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " " || board[index] == "")
end

def turn_count(board)
  counter = 0
  board.each do |space|
    if space == "X" || space == "O"
      counter +=1
  end
end
return counter
end

def current_player(board)
  if turn_count(board)%2 ==0
    current_player = "X"
  else
    current_player = "O"
end
return current_player
end
