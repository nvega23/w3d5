class PolyTreeNode
    attr_reader :parent, :children, :value

    def initialize(n)
        @parent = nil
        @children = []
        @value = n
    end

    
    
    def parent=(node)
        # if !self.parent.nil?
        #     if self.parent.length > 0
        #         node2 = self.parent
        #         node2.children.pop
    
        #     end
        # end
        if !self.parent.nil?
            self.parent.children.delete(self)
        end

        @parent = node
        if !@parent.nil?
            if !@parent.children.include?(self)
                @parent.children << self
            end
        end
        
    end

    def add_child(node)
        node.parent=(self)
    end

    def remove_child(node)
        if !self.children.include?(node)
            raise 'error'
        end
        node.parent=(nil)
        
        
      
        # 
    end
end

node1 = PolyTreeNode.new('a')
node2 = PolyTreeNode.new('b')
node1.parent=(node2)
