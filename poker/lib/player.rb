require_relative 'game'
require 'byebug'

class Player
    attr_reader  :hand, :deck , :name , :pot, :game

    def initialize(deck, game, name = "player1")
      @name, @game, @deck = name, game, deck
      @hand = Hand.new(deck)
      @pot = 100
      @in_round = false
    end

    def in_round?
      in_round
    end

    def fold
      in_round = false
      hand.reset
    end

    def raise_bet
      wager = get_raise_amount


      unless valid_raise_amount?(wager)
        raise "You must bet the minimum bet ($#{game.minimum_bet}) or more"
        raise_bet
      end

      #raise it whereever it needs to be raised
      #game #current wager?
    end

    def get_raise_amount
      puts "How much would you like to raise this round?"
      print ">> "

      raise_amount = gets.chomp.to_i
      raise_amount
    end

    def valid_raise_amount?(wager)
      debugger
      wager >= game.minimum_bet
    end

    def match

    end

    private
    attr_accessor :in_round

end
