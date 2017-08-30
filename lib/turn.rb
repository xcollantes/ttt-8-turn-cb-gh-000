def display_board(board)
  puts(" #{board[0]} | #{board[1]} | #{board[2]} ")
  puts("-----------")
  puts(" #{board[3]} | #{board[4]} | #{board[5]} ")
  puts("-----------")
  puts(" #{board[6]} | #{board[7]} | #{board[8]} ")
end

def input_to_index(input)
  input = input.to_i
  input -= 1
  return input
end

def turn(board)
  puts "enter 1-9:"
  user_input = gets.strip

  index = input_to_index(user_input)

  if (valid_move?(board, index))
    board = move(board, index)
  else
    turn(board)
  end

  display_board(board)
  turn(board)
end

def move(board, index, token = 'X')
  board[index] = token
  return board
end

def valid_move?(board, index)
  if (index.between?(0, 8) && !position_taken?(board, index))
    return true
  else
    puts "invalid"
    return false
  end
end

def position_taken?(board, index)
  if (board[index] == ' ' || board[index] == '' || board[index] == nil)
    return false
  else
    return true
  end
end
