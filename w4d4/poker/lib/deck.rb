
require_relative "card"


class Deck
   
    def initialize 
      @deck = self.build_deck
    end
    
    def build_deck
      deck = []
      Card::SUITS.each do |suit|
        Card::VALUES.each do |value|
          deck << Card.new(value,suit)
        end
      end
      deck
    end


end