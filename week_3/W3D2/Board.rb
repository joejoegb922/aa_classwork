require_relative "card"
# require "byebug"
class Board

    attr_reader :grid
    
    def initialize(num)
        raise "error" if num % 2 != 0
        @grid = Array.new(num) { Array.new(num) }
    end

    def card_deck
        num = self.grid.length 
        squared = (num ** 2)
        arr = []
        while arr.length < squared  
            letter = ('a'..'z').to_a.sample
            new_card1 = Card.new(letter)
            new_card2 = Card.new(letter)
            # p new_card.card_value
            if !arr.include?(new_card1) 
                arr << new_card1 
                arr << new_card2 
            end
        end
        arr
    end


    def populate
        # self.card_deck.each do |card|
        #     row = rand(0...self.grid.length)
        #     col = rand(0...self.grid.length)
        #     if @grid[row][col] == nil
        #         @grid[row][col] = card 
        #     end
        # end
        # @grid

        shuffled = self.card_deck.shuffle
        (0...self.grid.length).each do |row|
            (0...self.grid.length).each do |col|
                last = shuffled.pop
                @grid[row][col] = last
            end
        end
    end

    def render
        @grid
    end

    def won?
        self.grid.each do |ele|
        if ele.face_down 
            return false
        end
        p "Winner" 
        return true
    end

    def reveal(guess)
        row, col = guess
        if self.grid[row][col].face_down 
            self.grid[row][col].face_down = false
        end
    end
end