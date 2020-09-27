require_relative 'test_helper'

describe Card do
  describe "You can create a Card instance" do

    it "Can be created" do
      [:hearts, :spades, :clubs, :diamonds].each do |suit|
        (1..13).each do |value|
          card = Card.new(value, suit)
          expect(card).must_be_instance_of Card
        end
      end
    end

    it "Raises an ArgumentError for invalid parameters" do
      # To raise an ArgumentError in card.rb
      # raise ArgumentError.new
      expect {Card.new(0, :diamonds)}.must_raise ArgumentError
      expect {Card.new(14, :diamonds)}.must_raise ArgumentError
      expect {Card.new(14, :clovers)}.must_raise ArgumentError
    end
  end

  describe "Testing to_s" do

    it "to_s returns a readable String value logically for values 2-10" do
      # Test to ensure that to_s works for cards values 2-10
      # for example:  "2 of diamonds"

      card_1 = Card.new(2, :diamonds)
      card_2 = Card.new(3, :clubs)
      card_3 = Card.new(10, :hearts)
      card_4 = Card.new(9, :spades)

      card_arrays = [card_1, card_2, card_3, card_4]

      card_arrays.each do |card|
        expect(card.to_s).must_equal "#{card.value} of #{card.suit.to_s}"
      end

      #expect(card_1.to_s).must_equal "2 of diamonds"

    end

    it "to_s returns a readable String value for Ace, Jack, Queen, King" do
      # Test to ensure that to_s works for cards values 1, and 11-13
      # For example: "Queen of hearts"
      # The current implementation of to_s does not address this feature
      # Write the test, see it fail, then modify to_s to make it pass!
      # (Consider writing a helper method!)
      #
      # For reference:
      #  1: Ace
      #  11: Jack
      #  12: Queen
      #  13: King

      # card_1 = Card.new(11, :diamonds)
      # card_2 = Card.new(1, :clubs)
      # card_3 = Card.new(12, :spades)
      # card_4 = Card.new(13, :hearts)
      #
      # expect(card_1.to_s).must_equal "Jack of diamonds"
      # expect(card_2.to_s).must_equal "Ace of clubs"
      # expect(card_3.to_s).must_equal "Queen of spades"
      # expect(card_4.to_s).must_equal "King of hearts"

      # refactored
      face_cards = {
          1 => "Ace",
          11 => "Jack",
          12 => "Queen",
          13 => "King"
      }

      face_cards.each do |number, face_value|
        card = Card.new(number, :diamonds)
        expect(card.to_s).must_equal "#{face_value} of diamonds"
      end

    end
  end

  describe "Reader methods" do

    it "Can retrieve the value of the card using a `.value`." do
      # ensure that `.value works as expected`
      card_3 = Card.new(10, :hearts)

      expect(card_3.value).must_equal 10
      expect(Card.new(13, :hearts).value).must_equal 13
      expect(Card.new(11, :hearts).value).must_equal 11


    end

    it "Can retrieve the value of the card using a `.suit`." do
      # ensure that `.suit works as expected returning the symbol of the suit`
      card_3 = Card.new(10, :hearts)

      expect(card_3.suit).must_equal :hearts
      expect(Card.new(13, :diamonds).suit).must_equal :diamonds
      expect(Card.new(13, :hearts).suit).must_equal :hearts

    end
  end

end
