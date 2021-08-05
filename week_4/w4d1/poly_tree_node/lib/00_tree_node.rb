class PolyTreeNode
    def initialize(value)
        @value = value
        @parent = nil
        @children = []
    end
    
    def parent=(prnt)
        # if new parent, remove self from parent's children array
        if  @parent != nil
            @parent.children.delete(self)
        end

        @parent = prnt
        
        if @parent != nil && !@parent.children.include?(self)
            @parent.children << self
        end
    end
    
    def add_child(child_node)
        if !@children.include?(child_node)
            child_node.parent = self
        end
    end

    def remove_child(child_node)
        if @children.include?(child_node)
            child_node.parent = nil
            @children.delete(child_node)
        else 
            raise "not a child"
        end
    end

    def dfs(target_value)

        return self if target_value == @value
        return nil if children.length == 0 
        
        @children.each do  |child|
            c_value = child.dfs(target_value)
            return c_value if c_value != nil
        end
        nil
    end

    def bfs(target_value)
        queue = [self]
        until queue.empty?
            node = queue.pop
            return node if node.value == target_value
            node.children.each do |child|
                queue.unshift(child)
            end
        end
        nil
    end
    
    attr_reader :value, :parent, :children
end


