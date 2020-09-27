require_relative 'test_helper'

describe Deck do
  # Write tests for the Deck class.
  # What should you test?
    # 1.  Expected Behavior
    # 2.  Edge cases
  before do
    @deck = Deck.new
  end
  describe "You can create a Deck instance" do
    it "can be instantied" do
      deck = Deck.new

      expect(deck).must_be_instance_of Deck

    end

  end

  describe "Testing draw method" do
    deck = Deck.new
    it "must respond to draw" do
      #deck = Deck.new
      expect(deck).must_respond_to :draw
    end
    it "returns a card from the Card class" do
      expect(deck.draw).must_be_instance_of Card
    end

    it "will let me draw 52 cards from the deck" do
      52.times do
        expect(deck.draw).must_be_instance_of Card
      end
    end

    # xit "will return nil on the 53 card" do
    #   52.times do
    #     expect(@deck.draw).must_be_instance_of Card
    #   end
    #
    #   expect(@deck.draw).must_be_nil
    # end

  end

  describe "testing shuffle method " do
    deck = Deck.new
    it "must respond to the shuffle method" do
      # why must shuffle be a symbol?
      expect(deck).must_respond_to :shuffle

    end

  end

  describe "testing count method" do
    it "must respond to the count method" do
      expect(@deck).must_respond_to :count_deck
    end

    # it "returns the right number of cards in the deck" do
    #   # cards_left = @deck.draw
    #   #
    #   # expect(cards_left.count).must_equal 51
    #   #
    #   test_deck = Deck.new
    #   deck =  test_deck.draw
    #
    #
    #   expect(deck.count_deck).must_equal 51
    #
    # end


  end



end
