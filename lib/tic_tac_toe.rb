WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

<<<<<<< HEAD
def input_to_index(input)
  input.to_i - 1
=======
#display_board(board)

def input_to_index(user_input)
  user_input.to_i - 1
>>>>>>> 61277ec74bab337f16ace1efc39fba4504117aca
end


def move(board, index, current_player)
  board[index] = current_player
end

<<<<<<< HEAD
def position_taken?(board, position)
  board[position] != "" && board[position] != " "
end

def valid_move?(board, position)
  !position_taken?(board, position) && position.between?(0, 8)
end

def turn_count(board)
  a = 0
  board.each do |item|
    if item == "X" || item == "O"
      a += 1
    end
  end
  a
=======



def position_taken?(board, location)
  board[location] != " " && board[location] != ""
end


def valid_move?(board, index)
  index.between?(0,8) && !position_taken?(board, index)
end


def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index, current_player(board))
    display_board(board)
  else
    turn(board)
  end
end


def turn_count(arr)
  counter = 0
  arr.each do |element|
    if element == "O" ||element == "X"
      counter += 1
    end
    end
    counter
>>>>>>> 61277ec74bab337f16ace1efc39fba4504117aca
end


def current_player(arr)
  if turn_count(arr) % 2 == 0
    "X"
  else
    "O"
  end
end

<<<<<<< HEAD
def full?(board)
  !board.include? " "
end

def won?(board)
  WIN_COMBINATIONS.each do |win_combination|
    if (board[win_combination[0]] == "X" && board[win_combination[1]] == "X" && board[win_combination[2]] == "X") || (board[win_combination[0]] == "O" && board[win_combination[1]] == "O" && board[win_combination[2]] == "O")
=======

def won?(board)
  WIN_COMBINATIONS.each do |win_combo| # win_combo is same as WIN_COMBINATIONS[0][1][2]
    if (board[win_combo[0]] == "X" && board[win_combo[1]] == "X" && board[win_combo[2]]== "X") || (board[win_combo[0]] == "O" && board[win_combo[1]] == "O" && board[win_combo[2]] == "O")
     return win_combo
    end
    end
    return false
end


def full?(arr)
  arr.all? do |element|
    element == "X" || element == "O"
end
end

>>>>>>> 61277ec74bab337f16ace1efc39fba4504117aca

def draw?(arr)
  !won?(arr) && full?(arr)
end

<<<<<<< HEAD
def draw?(board)
  !won?(board) && full?(board)
end

def over?(board)
  won?(board) || draw?(board)
=======

def over?(game)
  won?(game) || draw?(game)
>>>>>>> 61277ec74bab337f16ace1efc39fba4504117aca
end


def winner(board)
  # we have game which will be the board array
  # won?(game) will be either false, or an array (for example: [0,1,2])
  # we can't grab a value of an index for false
  if won?(board)
     board[won?(board)[0]]
  end
end

<<<<<<< HEAD
def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)

  if valid_move?(board, index)
    move(board, index, current_player(board))
  else
    turn(board)
  end
end

def play(board)
  puts "Welcome to Tic Tac Toe!"
  until over?(board)
    turn(board)
  end

  if draw?(board) == false
    puts "Congratulations #{winner(board)}!"
  elsif draw?(board)
    puts "Cat's Game!"
  end
=======

def play(board)
  puts ('Welcome to Tic Tac Toe!')
  until over?(board)
    turn(board)
  end
    #move(current_player(board), input_to_index())
  if won?(board)
    puts("Congratulations #{winner(board)}!")
  elsif draw?(board)
  puts("Cat's Game!")
end
end

#play(board)


=begin
until the game is over
  take turns
>>>>>>> 61277ec74bab337f16ace1efc39fba4504117aca
end
if the game was won
  congratulate the winner
else if the game was a draw
  tell the players it has been a draw
=end
