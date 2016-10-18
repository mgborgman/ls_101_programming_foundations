VALID_CHOICES = %w(rock paper scissors)
YES_OR_NO = %w(yes no y n)

def prompt(message)
  puts("=> #{message}")
end

def play_again?
  loop do
    prompt("Play Again? (Y/N)")
    play_again = gets.chomp.downcase
    if YES_OR_NO.include?(play_again)
      if (play_again == 'y') || (play_again == 'yes')
        return true
      elsif play_again == 'n' || play_again == 'no'
        return false
      end
    else
      prompt("There was a problem.")
    end
  end
end

def display_results(player, computer)
  if (player == 'rock' && computer == 'scissors') ||
     (player == 'paper' && computer == 'rock') ||
     (player == 'scissors' && computer == 'paper')
    prompt("You Win!")
  elsif (player == 'scissors' && computer == 'rock') ||
        (player == 'rock' && computer == 'paper') ||
        (player == 'paper' && computer == 'scissors')
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
