require 'colorize'

class Card
  attr_reader :value, :suit, :color

  def initialize(value = :ace, suit = :hearts)
    @value = value
    @suit = suit
    @color = get_color
  end

  def to_s
    render_color = (color == :black ? :white : :red)

    "#{value.to_s} #{get_image(suit)}".colorize(render_color)
  end

  def get_color
    [:clubs, :spades].include?(suit) ? :black : :red
  end

  def get_image(suit)
    images = {
              :spades   => "♤",
              :clubs    => "♧",
              :diamonds => "♢",
              :hearts   => "♡"
              }

    images[suit]
  end

end

# a = Card.new(:ace, :spades)
# puts a.to_s
#
# b = Card.new(:queen, :hearts)
# puts b.to_s
