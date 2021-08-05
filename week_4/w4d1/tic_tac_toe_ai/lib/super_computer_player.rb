require_relative 'tic_tac_toe_node'

class SuperComputerPlayer < ComputerPlayer
  def move(game, mark)

    node = TicTacToeNode.new(game, mark)
    sub_node = node.children 
    winning_children = sub_node.select do |child|
      child.winning_node?(mark)
    end

    if winning_children.length > 0 
      return winning_children.first.prev_move_pos
    end

    tying_children = sub_node.reject do |child| 
      child.losing_node?(mark)
    end

    if tying_children.length > 0 
      return tying_childred.first.prev_move_pos
    end
    raise "Only losers here"
  end
end

if __FILE__ == $PROGRAM_NAME
  puts "Play the brilliant computer!"
  hp = HumanPlayer.new("Jeff")
  cp = SuperComputerPlayer.new

  TicTacToe.new(hp, cp).run
end

