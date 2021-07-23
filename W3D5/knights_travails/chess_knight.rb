require_relative "tree_node.rb"
class KnightPathFinder
    
    def self.valid_moves(pos)
        potential_moves = []
        potential_moves << pos + [2,1]
        potential_moves << pos + [2,-1]
        potential_moves << pos + [-2,1]
        potential_moves << pos + [-2,-1]
        potential_moves << pos + [1,2]
        potential_moves << pos + [1,-2]
        potential_moves << pos + [-1,2]
        potential_moves << pos + [-1,-2]
        potential_moves.reject do |p| 
            p[0] < 0 || p[0] > 7
            p[1] < 0 || p[1] > 7
        end
        potential_moves
    end

    def initialize(pos)
        @position = pos
        self.root_node
        @considered_positions = [root_node]
    end
    
    def root_node
        @root_node = PolyTreeNode.new(pos)
    end

    def new_move_positions(pos)
        vmoves = KnightPathFinder.valid_moves(pos)
        vmoves = vmoves - @considered_positions # filter out @considered_positions
        @considered_positions += vmoves
        vmoves
    end


    # def find_path
end


## part II 
# kpf = KnightPathFinder.new([0, 0])
# kpf.find_path([7, 6]) # => [[0, 0], [1, 2], [2, 4], [3, 6], [5, 5], [7, 6]]
# kpf.find_path([6, 2]) # => [[0, 0], [1, 2], [2, 0], [4, 1], [6, 2]]