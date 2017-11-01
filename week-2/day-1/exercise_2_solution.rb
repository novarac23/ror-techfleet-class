class Card
  attr_accessor :type, :strength

  def initialize(type, strength)
    @type = type
    @strength = strength
  end
end

class Deck
  attr_accessor :cards

  def initialize(cards)
    @cards = cards
  end

  def shuffle
    @cards.shuffle
  end

  def remove_first
    @cards.shift
  end

  def remove_last
    @cards.pop
  end
end

cards = [ Card.new("heart", 1), Card.new("spade", 12) ]

deck = Deck.new(cards)

puts "Printing out the deck: #{deck.cards}"

puts "Shuffling the deck..."

deck.shuffle

puts "Shuffled deck is:"

puts deck.cards

puts "Removing the first card..."
deck.remove_first

puts "Printing out the deck"
puts deck.cards
