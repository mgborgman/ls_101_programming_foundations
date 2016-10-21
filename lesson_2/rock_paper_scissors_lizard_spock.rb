VALID_CHOICES = { 'rock' => 'r',
                  'paper' => 'p',
                  'scissors' => 's',
                  'lizard' => 'l',
                  'spock' => 'sp' }
YES = %w(yes y)
NO = %w(no n)
WINNING_MOVES = { rock: %w(scissorslizard),
                  paper: %w(rock spock),
                  scissors: %w(paper lizard),
                  lizard: %w(paper spock),
                  spock: %w(scissors rock) }

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
  # return false if LOSING_MOVES[player.to_sym].include?(computer)
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
  loop do
    display_player_choices(choices_msg)
    user_choice = gets.chomp
    if VALID_CHOICES.values.include?(user_choice)
      break
    else
      prompt("There was a problem.")
    end
  end

  user_pick = VALID_CHOICES.key(user_choice)
  computer_pick = VALID_CHOICES.key.sample

  prompt("You chose: #{user_pick} \
  Computer chose: #{computer_pick}")

  display_results(user_pick, computer_pick)

  if win?(user_pick, computer_pick)
    player_wins += 1
  elsif win?(computer_pick, user_pick)
    computer_wins += 1
  end

  display_score(player_wins, computer_wins)

  next unless player_wins == 5 || computer_wins == 5

  break unless play_again?
  player_wins = 0
  computer_wins = 0
end

prompt("Thanks for playing")
