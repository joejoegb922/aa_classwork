require_relative "tree_node.rb"
class KnightPathFinder
    
    def self.valid_moves(pos)
        potential_moves = []
        potential_moves << KnightPathFinder.add_positions(pos, [2,1])
        potential_moves << KnightPathFinder.add_positions(pos, [2,-1])
        potential_moves << KnightPathFinder.add_positions(pos, [-2,1])
        potential_moves << KnightPathFinder.add_positions(pos, [-2,-1])
        potential_moves << KnightPathFinder.add_positions(pos, [1,2])
        potential_moves << KnightPathFinder.add_positions(pos, [1,-2])
        potential_moves << KnightPathFinder.add_positions(pos, [-1,2])
        potential_moves << KnightPathFinder.add_positions(pos, [-1,-2])
        potential_moves.reject do |p| 
            p[0] < 0 || p[1] > 7
            p[1] < 0 || p[1] > 7
        end
        potential_moves
    end

    def self.add_positions(pos_1, pos_2)
        return [pos_1[0] + pos_2[0], pos_1[1] + pos_2[1]]
    end
    def initialize(pos)
        @position = pos
        self.root_node
        @considered_positions = [root_node]
    end
    
    def root_node
        @root_node = PolyTreeNode.new(@position)
    end

    def new_move_positions(pos)
        vmoves = KnightPathFinder.valid_moves(pos)
        vmoves = vmoves - @considered_positions # filter out @considered_positions
        @considered_positions += vmoves
        p vmoves
    end


    # def find_path
end

start = KnightPathFinder.new([0,0])
start.new_move_positions([0,0]) 


## part II 
# kpf = KnightPathFinder.new([0, 0])
# kpf.find_path([7, 6]) # => [[0, 0], [1, 2], [2, 4], [3, 6], [5, 5], [7, 6]]
# kpf.find_path([6, 2]) # => [[0, 0], [1, 2], [2, 0], [4, 1], [6, 2]]