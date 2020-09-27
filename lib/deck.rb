
# deck.rb

require_relative 'card'

class Deck

  def initialize
    @cards = []

    [:hearts, :spades, :clubs, :diamonds].each do |suit|
      (1..13).each do |value|
        @cards << Card.new(value, suit)
      end
    end

  end

  def draw
    drawn_card = @cards.sample
    return drawn_card
  end

  def shuffle
    return @cards.shuffle

  end

  def count_deck
    return @cards.size
  end

end
