SUITS = ['hearts', 'diamonds', 'spades', 'clubs'].freeze
CARD_FACES = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'jack', 'queen',
              'king', 'ace'].freeze
PLAY_UNTIL = 21
STAY_AT = 17

wins = { player: 0, dealer: 0 }

def prompt(msg)
  puts ">> #{msg}"
end

def initalize_deck
  SUITS.product(CARD_FACES).shuffle
end

def join_and(array = nil)
  return array.to_s if array.nil? || array.length <= 1
  array[0..-2].join(", ") + " and " + array[-1]
end

def deal_cards(deck)
  players_hand = []
  dealers_hand = []

  2.times do
    players_hand << deck.shift
    dealers_hand << deck.shift
  end
  return players_hand, dealers_hand
end

def check_cards_players_turn(players_hand, dealers_hand)
  prompt "Dealer has: #{dealers_hand.first} and unknown"
  prompt "You have: #{players_hand}"
end

def check_cards_dealers_turn(players_hand, dealers_hand)
  prompt("Dealer has: #{join_and(dealers_hand)}")
  prompt("Player has: #{join_and(players_hand)}")
end

def total(hand)
  values = hand.map { |card| card[1] }

  total = 0
  values.each do |value|
    if value == 'ace'
      total += 11
    elsif %w(king queen jack).include?(value)
      total += 10
    else
      total += value.to_i
    end
  end

  # correct for aces
  values.select { |value| value == 'ace' }.count.times do
    total -= 10 if total > PLAY_UNTIL
  end
  total
end

def bust?(hand)
  total(hand) > PLAY_UNTIL
end

def play_again?
  puts "-------------"
  prompt "Do you want to play again? (y/n)"
  answer = gets.chomp
  answer.downcase.start_with?('y')
end

def winner(player_total, dealers_total)
  if player_total > PLAY_UNTIL
    prompt "You Busted!"
    prompt "You Lose!"
    'dealer'
  elsif dealers_total > PLAY_UNTIL
    prompt "Dealer Busted"
    prompt "You Win!"
    'player'
  elsif player_total > dealers_total
    prompt "You Win!"
    'player'
  elsif dealers_total > player_total
    prompt "Dealer Wins"
    'dealer'
  else
    prompt "It's a Draw"
  end
end

def add_wins(winner, wins)
  if winner == 'player'
    wins[:player] += 1
  elsif winner == 'dealer'
    wins[:dealer] += 1
  end
  prompt "You have #{wins[:player]} wins"
  prompt "Dealer has #{wins[:dealer]} wins"
end

loop do
  loop do
    deck = initalize_deck
    players_hand, dealers_hand = deal_cards(deck)
    player_total = 0
    dealers_total = 0
    check_cards_players_turn(players_hand, dealers_hand)

    # player_turn
    player_move = ''
    loop do
      break if player_move == 'stay' || bust?(players_hand)
      prompt("Hit or Stay? ")
      player_move = gets.chomp.downcase
      next unless player_move.include?('hit')
      players_hand << deck.shift
      player_total = total(players_hand)
      prompt "Your hand is: #{players_hand}"
      prompt "Your total is: #{player_total}"
    end
    player_total = total(players_hand)
    if bust?(players_hand)
      round_point = winner(player_total, dealers_total)
      add_wins(round_point, wins)
      break
    elsif player_move == 'stay'
      prompt("You chose to stay at #{player_total}")
    end

    # dealer_turn
    loop do
      if dealers_total < STAY_AT
        prompt("dealer chooses to hit")
        dealers_hand << deck.shift
        dealers_total = total(dealers_hand)
        prompt "Dealers hand is #{dealers_hand}"
        prompt "Dealers total is #{dealers_total}"
      else
        prompt("dealer chooses to stay at #{dealers_total}")
        break
      end
      break if bust?(dealers_hand)
    end
    if bust?(dealers_hand)
      round_point = winner(player_total, dealers_total)
      add_wins(round_point, wins)
      break
    end
      round_point = winner(player_total, dealers_total)
      add_wins(round_point, wins)
  end
  next unless wins[:player] >= 5 || wins[:dealer] >= 5
  wins[:player] = 0
  wins[:dealer] = 0
  break unless play_again?
end

prompt "Thanks for playing Twenty One!"
