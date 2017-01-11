SUITS = ['hearts', 'diamonds', 'spades', 'clubs'].freeze

card_faces = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'jack', 'queen',
              'king', 'ace']

def prompt(msg)
  puts ">> #{msg}"
end

def initalize_deck(card_faces)
  deck = []
  SUITS.each do |suit|
    card_faces.each do |card|
      deck << [suit, card]
    end
  end
  deck
end

def join_or(array = nil)
  return array.to_s if array.nil? || array.length <= 1
  array[0..-2].join(", ") + " and " + array[-1]
end

def remove_suit_from_hand(hand)
  hand.flatten!
  hand.delete_if { |item| SUITS.include?(item) }
  hand
end

def deal_cards(deck)
  players_hand = []
  dealers_hand = []
  deck.shuffle!

  2.times do
    players_hand << deck.shift
    dealers_hand << deck.shift
  end
  return players_hand, dealers_hand
end

def check_cards_players_turn(players_hand, dealers_hand)
  prompt "Dealer has: #{dealers_hand.first} and unknown"
  prompt "You have: #{join_or(players_hand)}"
end

def check_cards_dealers_turn(players_hand, dealers_hand)
  prompt("Dealer has: #{join_or(dealers_hand)}")
  prompt("Player has: #{join_or(players_hand)}")
end

def separate_aces(hand)
  hand.sort_by! do |card|
    if card =~ /^\d+$/
      [2, $&.to_i]
    else
      [1, card]
    end
  end
  hand.reverse
end

def running_total(hand)
  total = 0
  hand.each do |card|
    if card.to_i.nonzero?
      total += card.to_i
    elsif %w(king queen jack).include?(card)
      total += 10
    elsif card == 'ace' && total + 11 <= 21
      total += 11
    else
      total += 1
    end
  end
  total
end

def bust?(hand)
  total = running_total(hand)
  total > 21
end

def winner(player_total, dealers_total)
  if player_total > dealers_total
    prompt("You Win!")
  else
    prompt("Dealer Wins")
  end
end

def player_turn(players_hand, dealers_hand, deck)
  total = 0
  move = ''
  loop do
    players_hand = remove_suit_from_hand(players_hand)
    check_cards_players_turn(players_hand, dealers_hand)
    prompt("Hit or Stay? ")
    move = gets.chomp.downcase
    break if move == 'stay'
    next if !move.include?('hit')
    players_hand << deck.shift
    players_hand = remove_suit_from_hand(players_hand)
    players_hand = separate_aces(players_hand)
    break if bust?(players_hand)
  end
  if bust?(players_hand)
    prompt("Bust!")
    prompt("You Lose!")
    exit
  elsif move == 'stay'
    total = running_total(players_hand)
    prompt("You chose to stay at #{total}")
  end
  total
end

def dealer_turn(players_hand, dealers_hand, deck)
  total = 0
  loop do
    dealers_hand = remove_suit_from_hand(dealers_hand)
    dealers_hand = separate_aces(dealers_hand)
    check_cards_dealers_turn(players_hand, dealers_hand)
    prompt("Dealer Hit or Stay? ")
    if total < 17
      prompt("dealer chooses to hit")
      dealers_hand << deck.shift
    else
      prompt("dealer chooses to stay at #{total}")
      break
    end
    dealers_hand = remove_suit_from_hand(dealers_hand)
    total = running_total(dealers_hand)
    break if bust?(dealers_hand)
  end
  if bust?(dealers_hand)
    prompt("Dealer Busts!")
    prompt("You Win!")
    exit
  end
  total
end

deck = initalize_deck(card_faces)
players_hand, dealers_hand = deal_cards(deck)
remove_suit_from_hand(dealers_hand)
players_total = player_turn(players_hand, dealers_hand, deck)
dealers_total = dealer_turn(players_hand, dealers_hand, deck)
winner(players_total, dealers_total)
