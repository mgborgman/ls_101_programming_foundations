SUITS = ['hearts', 'diamonds', 'spades', 'clubs'].freeze
CARD_FACES = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'jack', 'queen',
              'king', 'ace'].freeze

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
    total -= 10 if total > 21
  end
  total
end

def bust?(hand)
  total(hand) > 21
end

def play_again?
  puts "-------------"
  prompt "Do you want to play again? (y/n)"
  answer = gets.chomp
  answer.downcase.start_with?('y')
end

def show_ending_totals(player_total, dealers_total)
  prompt "Dealers Total: #{dealers_total}"
  prompt "Your Total: #{player_total}"
end

def winner(player_total, dealers_total)
  if player_total > 21
    prompt "You Busted!"
    prompt "You Lose!"
  elsif dealers_total > 21
    prompt "Dealer Busted"
    prompt "You Win!"
  elsif player_total > dealers_total
    prompt "You Win!"
  elsif dealers_total > player_total
    prompt "Dealer Wins"
  end
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
      prompt("Hit or Stay? ")
      player_move = gets.chomp.downcase
      break if player_move == 'stay'
      next unless player_move.include?('hit')
      players_hand << deck.shift
      player_total = total(players_hand)
      prompt "Your new hand is: #{players_hand}"
      prompt "Your new total is: #{player_total}"
      break if bust?(players_hand)
    end
    player_total = total(players_hand)
    if bust?(players_hand)
      show_ending_totals(player_total, dealers_total)
      winner(player_total, dealers_total)
      break
    elsif player_move == 'stay'
      prompt("You chose to stay at #{player_total}")
    end

    # dealer_turn
    loop do
      if dealers_total < 17
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
    dealers_total = total(dealers_hand)
    if bust?(dealers_hand)
      show_ending_totals(player_total, dealers_total)
      winner(player_total, dealers_total)
      break
    end
    show_ending_totals(player_total, dealers_total)
    winner(player_total, dealers_total)
  end
  break unless play_again?
end

prompt "Thanks for playing Twenty One!"
