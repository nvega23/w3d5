class PolyTreeNode
    attr_reader :parent, :children, :value
    def initialize(n)
        @parent = nil
        @children = []
        @value = n
    end
    def parent=(node)
        @parent = node
        @parent.children << self
    end
end

node1 = PolyTreeNode.new('a')
node2 = PolyTreeNode.new('b')
node1.parent=(node2)
