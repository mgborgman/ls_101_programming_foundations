GOES_FIRST = 'choose'.freeze
INITIAL_MARKER = ' '.freeze
PLAYER_MARKER = 'X'.freeze
COMPUTER_MARKER = 'O'.freeze
YES = %w(yes y).freeze
NO = %w(no n).freeze
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +
                [[1, 5, 9], [3, 5, 7]].freeze

player_wins = 0
computer_wins = 0

def prompt(msg)
  puts "=> #{msg}"
end

def joinor(array, delimiter=',', conjunction=' or ')
  if array.length > 2
    array = array.join(delimiter)
    array.insert(-2, array.slice(-1).replace(conjunction))
  else
    array.join(conjunction)
  end
end

def display_board(brd)
  system 'clear'
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}  "
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}  "
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}  "
  puts "     |     |"
  puts ""
end

def players_turn_first(brd)
  loop do
    display_board(brd)

    player_places_piece!(brd)
    break if someone_won?(brd) || board_full?(brd)

    computer_places_piece!(brd)
    break if someone_won?(brd) || board_full?(brd)
  end
end

def computers_turn_first(brd)
  loop do
    display_board(brd)

    computer_places_piece!(brd)
    break if someone_won?(brd) || board_full?(brd)

    display_board(brd)

    player_places_piece!(brd)
    break if someone_won?(brd) || board_full?(brd)
  end
end

def take_turn(input, brd)
  if GOES_FIRST == 'player'
    players_turn_first(brd)
  elsif GOES_FIRST == 'computer'
    computers_turn_first(brd)
  elsif input == 'p'
    players_turn_first(brd)
  elsif input == 'c'
    computers_turn_first(brd)
  end
end

def initalize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square #{joinor(empty_squares(brd))}: "
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, that's not a valid choice."
  end

  brd[square] = PLAYER_MARKER
end

def computer_places_piece!(brd)
  square = nil
  WINNING_LINES.each do |line|
    square = find_optimal_move(line, brd)
    break if square
  end

  # if !square
  square = 5 if empty_squares(brd).include?(5) unless square
  square = empty_squares(brd).sample unless square
    


  # if !square
  #   square = empty_squares(brd).sample
  # end

  brd[square] = COMPUTER_MARKER
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def count_computer_marker(line, brd)
  brd.values_at(*line).count(COMPUTER_MARKER)
end

def count_player_marker(line, brd)
  brd.values_at(*line).count(PLAYER_MARKER)
end

def find_optimal_move(line, brd)
  if count_computer_marker(line, brd) == 2
    brd.select { |k, v| line.include?(k) && v == INITIAL_MARKER }.keys.first
  elsif count_player_marker(line, brd) == 2
    brd.select { |k, v| line.include?(k) && v == INITIAL_MARKER }.keys.first
  end
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

def count_wins(brd, player_wins, computer_wins)
  if detect_winner(brd) == 'Player'
    player_wins += 1
  elsif detect_winner(brd) == 'Computer'
    computer_wins += 1
  end
  return player_wins, computer_wins
end

def play_again?
  answer = ''
  loop do
    prompt "Play again? (Y/N)"
    answer = gets.chomp
    if YES.include?(answer.downcase)
      return true
    elsif NO.include?(answer.downcase)
      return false
    else
      prompt "Please enter Y or N."
    end
  end
end

input = nil

loop do
  board = initalize_board

  if GOES_FIRST != 'choose'
    input = GOES_FIRST
    break
  elsif input.nil?
    loop do
      prompt "Who goes first, Player or Computer." \
               "Enter P for Player for C for computer."
      input = gets.chomp.downcase

      if input == 'p'
        break
      elsif input == 'c'
        break
      else
        prompt "Please enter P or C."
      end
    end
  end

  take_turn(input, board)

  display_board(board)

  if someone_won?(board)
    prompt "#{detect_winner(board)} won!"
  else
    prompt "It's a tie!"
  end

  player_wins, computer_wins = count_wins(board, player_wins, computer_wins)
  prompt "Current Score: Player: #{player_wins} | Computer: #{computer_wins}"
  sleep 2

  if player_wins >= 5 || computer_wins >= 5
    player_wins = 0
    computer_wins = 0
    input = nil
    break unless play_again?
  end
end

prompt "Thanks for playing Tic-Tac-Toe!"
