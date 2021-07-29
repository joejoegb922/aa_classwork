
require_relative "card"

SUITS = [:hearts, :diamonds, :clubs, :spades]
VALUES = ["ace", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "jack", "queen", "king"]

class Deck
   
    def initialize 
      @deck = self.build_deck
    end
    
    def build_deck
      deck = []
      SUITS.each do |suit|
        VALUES.each do |value|
          deck << Card.new(value,suit)
        end
      end
      deck
    end


end