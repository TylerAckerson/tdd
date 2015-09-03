require 'rspec'
require 'player'
require 'deck'
require 'game'

describe Player do
  let(:deck) { Deck.new }
  let(:game) { Game.new(deck)}
  subject(:new_player) { Player.new(deck, game, "p1") }
  describe "Initalizes Player" do


    context "Start of game" do
      it "starts with a pot of 100" do
        expect(new_player.pot).to eq(100)
      end
      it "sets the player's name" do
        expect(new_player.name).to eq("p1")
      end

      it "initializes and empty hand and is not in the round" do
        expect(new_player.hand.count).to eq(0)
        expect(new_player).not_to be_in_round
      end
    end
  end

  describe "#fold" do
    context "player folds" do
      it "player should have an empty hand" do
        new_player.fold
        expect(new_player.hand).to be_empty
      end
    end
  end

  describe "#bet" do
    context "player raises on his turn" do
      let(:low_bet) { 9 }
      let(:min_bet) { 10 }
      # it "player should be prompted for a raise amount" do
      #   expect(new_player).to receive(:get_raise_amount).exactly(1).times
      #   new_player.raise_bet
      # end
      #
      # it "should raise an error if below min" do
      #   expect { new_player.raise_bet(low_bet) }.to raise_error
      # end
      # it "should not raise an error if minumum is bet" do
      #   expect { new_player.raise_bet(min_bet) }.to_not raise_error
      # end

    end
  end

end
