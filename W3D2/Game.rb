require_relative "card"
require_relative "board"

class Game

    def initialize(num)
        @board = Board.new(num)
        @guessed = nil
    end

    def play
        while @board.won? == false
            @board.render
            p "Take a guess in format '1,1'"
            guess = gets.chomp.split(',')
            pos = guess.map { |ele| ele.to_i }
            if @guessed == nil
                @board.reveal(pos)
                @guessed = @grid[pos[0]][pos[1]]
            elsif @guessed.card_value == @grid[pos[0]][pos[1]].card_value
                @guessed.face_down = false 
                @grid[pos[0]][pos[1]] = false
                @guessed = nil
            else 
                @guessed.face_down = true
                @grid[pos[0]][pos[1]]].face_down = true
                @guessed = nil
            end
        end
    end

end

game_1 = Game.new(4)
game_1.play