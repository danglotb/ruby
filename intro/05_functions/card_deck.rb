# Create a standard 52 card deck
# Sort card suits according to Hearts, Diamonds, Clubs, then Spades.
# Sort cards in ascending order, from 2 to Ace.

def get_cards_above_10
  return ['V', 'Q', 'K', 'A']
end

def get_all_card
  cards = []
  (2..10).each do |c|
    cards.push(c)
  end
  for c in get_cards_above_10
    cards.push(c)
  end
  return cards
end

def create_deck
  # Your code goes here
  colors = ['h', 'd', 'c', 's']
  deck = []
  for color in colors
    for card in get_all_card
      deck.push("#{card}#{color}")
    end
  end
  return deck
end


card_deck = create_deck

puts card_deck[0] == "2h"   # 2 of Hearts
puts card_deck[8] == "10h"  # 10 of Hearts
puts card_deck[51] == "As"  # Ace of Spades
