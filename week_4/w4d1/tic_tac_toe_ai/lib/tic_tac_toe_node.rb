require_relative 'tic_tac_toe'

class TicTacToeNode
  attr_reader :board, :next_mover_mark, :prev_move_pos

  def initialize(board, next_mover_mark, prev_move_pos = nil)
    @board = board
    @next_mover_mark = next_mover_mark
    @prev_move_pos = prev_move_pos
  end

  def losing_node?(evaluator)
    return @board.winner != evaluator if @board.won?
    return false if @board.tied?

    nodes = self.children

    if evaluator == @next_mover_mark
      return nodes.all? do |child_state| 
        child_state.losing_node?(evaluator)
      end
    else 
      return nodes.any? do |child_state|
        child_state.losing_node?(evaluator)
      end
    end
  end

  def winning_node?(evaluator)
    return true if @board.over? && evaluator == @board.winner

    nodes = self.children

    if evaluator == @next_mover_mark
      nodes.any? do |node| 
        node.winning_node?(evaluator)
      end
    else
      nodes.any? do |node|
        node.winning_node?(evaluator)
      end
    end

  end

  # This method generates an array of all moves that can be made after
  # the current move.
  def children
    nodes =[]

    valid_pos = [] # get valid positions
    @board.rows.each.with_index do |row, row_index|
      row.each.with_index do |square, col_index|
      pos = [row_index, col_index]
      valid_pos << pos if @board.empty?(pos)
      end
    end
    # p valid_pos

    valid_pos.each.with_index do |pos, i|
      rows_dup = @board.dup
      rows_dup[pos] = @next_mover_mark
      nodes << TicTacToeNode.new(rows_dup,self.switch_mark,pos) # alternating marks
    end
    return nodes
  end

  def switch_mark
    if @next_mover_mark == :x
      return :o
    else
      return :x
    end
  end
end


# board = Board.new
# node = TicTacToeNode.new(board, :x)
# node.children

# a = [[0,1][]]

# p board.empty?([0,0])
