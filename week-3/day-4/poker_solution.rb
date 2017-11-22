class Card
  attr_accessor :number, :type

  def initialize(number, type)
    @number = number
    @type = type
  end
end

class Hand
  attr_accessor :cards

  def initialize(cards)
    @cards = cards
  end
end

class Determinor
  def initialize(play)
    @play = play
    @rank = []
  end

  def pick_the_best_hand
    @play.each_with_index do |hand, index|
      if royal_flush(hand)
        @rank << {index: index, ranking: 10}
      elsif four_of_a_kind(hand)
        @rank << {index: index, ranking: 5}
      end
    end
  end

  private

    def royal_flush(hand)
      # go through all of the cards and see if they have the same type
      # see if card numbers are in an inceremental order
      # if those two pass return true
      # if not return false
      # hand.each do |card|
      #   if card.type == 
      # end
    end
end

first_set_of_cards = []
second_set_of_cards = []
hands = []

4.times do
  card_number = gets.chomp.to_i
  puts "Please enter card type: "
  card_type = gets.chomp
  first_set_of_cards << Card.new(card_number, card_type)
end

4.times do
  puts "Please enter card number: "
  card_number = gets.chomp.to_i
  puts "Please enter card type: "
  card_type = gets.chomp
  second_set_of_cards << Card.new(card_number, card_type)
end

first_hand = Hand.new(first_set_of_cards)
second_hand = Hand.new(second_set_of_cards)
hands = [first_hand, second_hand]

determinor = Determinor.new(hands)
#determinor.pick_the_best_hand

