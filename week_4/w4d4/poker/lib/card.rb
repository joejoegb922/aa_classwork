class Card 
  SUITS = [:hearts, :diamonds, :clubs, :spades] #put in card class 
  VALUES = ["ace", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "jack", "queen", "king"]

  attr_reader :value, :suit

  def initialize(value, suit)
    @value = value
    @suit = suit
  end

end
