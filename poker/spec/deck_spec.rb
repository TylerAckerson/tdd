require 'deck'
require 'rspec'

describe Deck do
  subject(:starting_deck) { Deck.new }
  subject(:shuffled_deck) { starting_deck.shuffle! }

  describe "deck initialization" do
    context "create a deck" do
      it "should a create 52 card deck" do
        expect(starting_deck).to eq(starting_deck)
        expect(starting_deck.count).to eq(52)
        expect(starting_deck.cards.count { |card| card.suit == :hearts } ).to eq(13)
      end
    end
  end

  describe "#shuffle!" do
    subject(:new_shuffled_deck) { Deck.new.shuffle! }
    context "a full deck is being shuffled" do
      it "shuffles the starting deck" do
        expect(new_shuffled_deck).to be_a(Deck)
        expect(new_shuffled_deck.count).to eq(52)
      end
    end
  end

  describe "#draw_card" do
    before do
      shuffled_deck.draw_card
    end

    context "drawing one card from a full deck" do
      it "removes one card from the deck" do
        expect(shuffled_deck.count).to eq(51)
      end
    end


  end

end
