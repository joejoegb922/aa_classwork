require_relative "tree_node.rb"
class KnightPathFinder
    attr_accessor :position, :considered_positions, :root_node
    
    def self.valid_moves(pos)
        #store move vectors into constant array & iterate through them to get valid moves
        potential_moves = []
        potential_moves << KnightPathFinder.add_positions(pos, [2,1])
        potential_moves << KnightPathFinder.add_positions(pos, [2,-1])
        potential_moves << KnightPathFinder.add_positions(pos, [-2,1])
        potential_moves << KnightPathFinder.add_positions(pos, [-2,-1])
        potential_moves << KnightPathFinder.add_positions(pos, [1,2])
        potential_moves << KnightPathFinder.add_positions(pos, [1,-2])
        potential_moves << KnightPathFinder.add_positions(pos, [-1,2])
        potential_moves << KnightPathFinder.add_positions(pos, [-1,-2])
        potential_moves.select! do |p| 
            p[0] >= 0 && p[0] <= 7 &&
            p[1] >= 0 && p[1] <= 7
        end
        potential_moves
    end

    def self.add_positions(pos_1, pos_2)
        return [pos_1[0] + pos_2[0], pos_1[1] + pos_2[1]]
    end

    def initialize(pos)
        @position = pos
        @root_node = self.make_root_node
        @considered_positions = [root_node.value]
        self.build_move_tree
    end

    def get_root_node
        @root_node
    end

    def build_move_tree
        queue = [@root_node]
        until queue.empty?
            current_node = queue.pop
            v_moves = self.new_move_positions(current_node.value)
            v_moves.each do |move|
                node = PolyTreeNode.new(move)
                queue.unshift(node)
                current_node.add_child(node)
            end
        end
    end
    
    def make_root_node
        @root_node = PolyTreeNode.new(@position)
    end

    def new_move_positions(pos)
        vmoves = KnightPathFinder.valid_moves(pos)
        vmoves = vmoves - @considered_positions # filter out @considered_positions
        @considered_positions += vmoves
        return vmoves
    end


    def find_path(end_pos)
        target_node = @root_node.dfs(end_pos)
        trace_path_back(target_node)
    end

    def trace_path_back(node)
        path = [node.value]
        
        current_node = node
        while current_node.parent != nil
            path.unshift(current_node.parent.value)
            current_node = current_node.parent
        end
        path
    end
end

# start = KnightPathFinder.new([0,0])
# start.new_move_positions([0,0]) 
# start.position = [2,1]
# start.root_node
# start.new_move_positions([2,1])  
# start.considered_positions.length

kpf = KnightPathFinder.new([0, 0])
# p kpf.root_node.value
p kpf.find_path([7, 6]) # => [[0, 0], [1, 2], [2, 4], [3, 6], [5, 5], [7, 6]]
p kpf.find_path([6, 2]) # => [[0, 0], [1, 2], [2, 0], [4, 1], [6, 2]]

## part II 
# kpf = KnightPathFinder.new([0, 0])
# kpf.find_path([7, 6]) # => [[0, 0], [1, 2], [2, 4], [3, 6], [5, 5], [7, 6]]
# kpf.find_path([6, 2]) # => [[0, 0], [1, 2], [2, 0], [4, 1], [6, 2]]