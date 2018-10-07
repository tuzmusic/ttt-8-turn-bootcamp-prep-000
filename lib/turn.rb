def display_board(b)
  puts" #{b[0]} | #{b[1]} | #{b[2]} "
  puts"-----------"
  puts" #{b[3]} | #{b[4]} | #{b[5]} "
  puts"-----------"
  puts" #{b[6]} | #{b[7]} | #{b[8]} "
end

def input_to_index(num)
  return num.to_i - 1
end

def valid_move?(board, index)
  return index.between?(0, board.size) && !position_taken?(board, index)
end

def position_taken?(board, index)
  spot = board[index]
  return !(spot == " " || spot == "" || !spot)
end

def move(board, index, char)
  board[index] = char
end

def turn
  puts("Please enter 1-9:")
end
