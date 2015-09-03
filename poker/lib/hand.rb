require_relative 'deck'
require_relative 'card'

class Hand
  attr_accessor :cards
  attr_reader :deck

  def initialize(deck)
    @deck = deck
    @cards = []

    #get_two_cards
  end

  def get_combinations

  end

  def receive_cards(dealt_cards)
    cards.concat(dealt_cards)
  end

  def render
    cards.each do |card|
      puts card.to_s
    end
  end

  def count
    cards.length
  end

  def empty?
    cards.empty?
  end

  def reset
    cards = []
  end

  def combinations

  end


end
#
# d = Deck.new
# h = Hand.new(d)
# h.render
