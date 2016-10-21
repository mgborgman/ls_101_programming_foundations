VALID_CHOICES = { 'rock' => 'r',
                  'paper' => 'p',
                  'scissors' => 's',
                  'lizard' => 'l',
                  'spock' => 'sp' }
YES = %w(yes y)
NO = %w(no n)
WINNING_MOVES = { rock: ['scissors', 'lizard'],
                  paper: ['rock', 'spock'],
                  scissors: ['paper', 'lizard'],
                  lizard: ['paper', 'spock'],
                  spock: ['scissors', 'rock'] }

player_wins = 0
computer_wins = 0

def prompt(message)
  puts("=> #{message}")
end

choices_msg = <<~MSG
    Enter:  'r' for 'rock'
               'p' for 'paper'
               's' for 'scissors'
               'l' for 'lizard'
              'sp' for 'spock'
MSG

def display_score(player_wins, computer_wins)
  prompt("Player: #{player_wins} Computer: #{computer_wins}")
end

def display_player_choices(msg)
  prompt("Choose one: #{VALID_CHOICES.keys.join(', ')}")
  prompt(msg)
end

def play_again?
  loop do
    prompt("Play Again? (Y/N)")
    play_again = gets.chomp.downcase

    return true if YES.include?(play_again)
    return false if NO.include?(play_again)
    prompt("There was a problem.")
  end
end

def win?(first, second)
  return true if WINNING_MOVES[first.to_sym].include?(second)
  #return false if LOSING_MOVES[player.to_sym].include?(computer)
end


def display_results(player, computer)
  if win?(player, computer)
    prompt("You Win!")
  elsif win?(computer, player)
    prompt("You Lose :(")
  else
    prompt("Its a Tie.")
  end
end

prompt("Welcome to Rock Paper Scissors Lizard Spock. \
  First to 5 wins!")
loop do
  user_choice = ''
  # ask user to choose rock, paper, or scissors
  loop do
    display_player_choices(choices_msg)
    user_choice = gets.chomp
    # validate user input
    if VALID_CHOICES.values.include?(user_choice)
      break
    else
      prompt("There was a problem.")
    end
  end

  full_word_user_pick = VALID_CHOICES.key(user_choice)
  # create computers random choice
  computer_choice = VALID_CHOICES.values.sample
  full_word_computer_pick = VALID_CHOICES.key(computer_choice)

  prompt("You chose: #{full_word_user_pick} \
  Computer chose: #{full_word_computer_pick}")
  
  display_results(full_word_user_pick, full_word_computer_pick)

  if win?(full_word_user_pick, full_word_computer_pick)
    player_wins += 1
  elsif win?(full_word_computer_pick, full_word_user_pick)
    computer_wins += 1
  end
  
  display_score(player_wins, computer_wins)

  next unless player_wins == 5 || computer_wins == 5

  break unless play_again?
  player_wins = 0 
  computer_wins = 0
end

prompt("Thanks for playing")