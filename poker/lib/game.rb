class Game
  attr_accessor :minimum_bet, :deck

  def initialize(deck, players = [ Player.new(deck, "player1"),
                                    Player.new(deck, "player2"),
                                    Player.new(deck, "player3"),
                                    Player.new(deck, "player4") ] )
    @deck = deck
    @players = *players
    @minimum_bet = 10
    @table_hand = Hand.new(deck)
  end

  def change_minimum(num)
    minimum_bet + num
  end

  def flop
    hand.receive_cards(deck.draw_card(3))
  end



end
