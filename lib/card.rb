# card.rb

VALID_SUITS = [:hearts, :spades, :clubs, :diamonds]

class Card
  attr_reader :value, :suit

  def initialize(value, suit)
    unless VALID_SUITS.include?(suit)
      raise ArgumentError.new("#{suit} is an invalid suit")
    end

    unless (1..13).include?(value)
      raise ArgumentError.new("#{value} is an invalid value")
    end

    @value = value
    @suit = suit

    #should this be its own method?


  end

  # def valid_params(input)
  #   if ![:hearts, :spades, :clubs, :diamonds].include?(suit) || !(1..13).include?(value)
  #     raise ArgumentError.new("#{suit} or #{value} is an invalid input")
  #   end
  # end

  def to_s
    return "#{get_face_card(value)} of #{suit.to_s}"
  end
  # value as the input, changed value based on face cards as the output
  def get_face_card(value)

    case value
    when 1
      "Ace"
    when 11
      "Jack"
    when 12
      "Queen"
    when 13
      "King"
    else
      value
    end

  end

end
