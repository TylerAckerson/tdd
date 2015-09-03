require_relative 'card'
require_relative 'hand'

class Deck

  CARDS = { 'A' => :ace,
            '2' => :two,
            '3' => :three,
            '4' => :four,
            '5' => :five,
            '6' => :six,
            '7' => :seven,
            '8' => :eight,
            '9' => :nine,
            '10' => :ten,
            'J' => :jack,
            'Q' => :queen,
            'K' => :king,
          }

  SUITS = [:hearts, :spades, :diamonds, :clubs]

  attr_accessor :cards

  def initialize
    @cards = []
    get_cards
  end

  def get_cards
    all_cards = CARDS.keys.product(SUITS)
    all_cards.each do |value, suit|
      cards << Card.new(value, suit)
    end

    shuffle!
  end

  def shuffle!
    cards.shuffle!
    self
  end

  def draw_card(count = 1)
    dealt_cards = []
    count.times do
      dealt_cards << cards.pop
    end

    dealt_cards
  end

  def count
    cards.length
  end

  def deal_card(hand)
    hand.receive_card(draw_card)
  end

end
