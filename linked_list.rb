class LinkedList
  attr_accessor :list
  def initialize
    @list = []
  end
  
  public
  
  def append (value)
    new_node = Node.new
    new_node.value = value
    previous_node = self.list[-1]
    previous_node.next_node = new_node if previous_node
    self.list << new_node
  end
  
  class Node
    attr_accessor :value, :next_node
    def initialize
      @value = nil
      @next_node = nil
    end
  end
end