VALID_CHOICES = %w(rock paper scissors)
YES = %w(yes y)
NO = %w(no n)
WINNING_MOVES = { rock: 'scissors',
                  paper: 'rock',
                  scissors: 'paper' }
LOSING_MOVES = { scissors: 'rock',
                 rock: 'paper',
                 paper: 'scissors' }

def prompt(message)
  puts("=> #{message}")
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

def win?(player, computer)
  return true if WINNING_MOVES[player.to_sym].include?(computer)
  return false if LOSING_MOVES[player.to_sym].include?(computer)
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You Win!")
  elsif win?(player, computer) == false
    prompt("You Lose :(")
  else
    prompt("Its a Tie.")
  end
end

loop do
  choice = ''
  # ask user to choose rock, paper, or scissors
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = gets.chomp
    # validate user input
    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("There was a problem.")
    end
  end

  # create computers random choice
  computer_choice = VALID_CHOICES.sample

  prompt("You chose: #{choice} Computer chose: #{computer_choice}")
  display_results(choice, computer_choice)

  break unless play_again?
end

prompt("Thanks for playing")
