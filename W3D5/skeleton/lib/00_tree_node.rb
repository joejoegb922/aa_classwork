class PolyTreeNode
    def initialize(value)
        @value = value
        @parent = nil
        @children = []
    end
    
    def parent=(parent)
        # if new parent, remove self from parent's children array
        @parent = parent
        
        if @parent != nil && !@parent.children.include?(self)
            @parent.children << self
        end
    end
    
    
    attr_reader :value, :parent, :children
end

