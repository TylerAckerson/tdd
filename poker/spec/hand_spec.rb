require 'rspec'
require 'hand'
require 'deck'

describe Hand do
  describe "initialization of hand" do
    subject(:hand) {Hand.new(deck)}
    let(:deck) {Deck.new}

    context "Five card poker" do
      it "is dealt two different cards" do
        expect(hand.count).to eq(0)
      end
    end

  end
end
