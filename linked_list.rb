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
  
  def prepend (value)
    new_node = Node.new
    new_node.value = value
    new_node.next_node = self.list[0] ? self.list[0] : nil
    self.list.unshift(new_node)
  end
  
  def size
    self.list.length
  end
  
  def head
    #
  end
  
  def tail
    #
  end
  
  def at (index)
    #
  end
  
  def pop
    #
  end
  
  def contains?
    #
  end
  
  def find (data) 
    #
  end
  
  def to_s
    #
  end
  
  # extras
  
  def insert_at (index) 
    
  end
  
  def remove_at (index)
    #
  end
  
  class Node
    attr_accessor :value, :next_node
    def initialize
      @value = nil
      @next_node = nil
    end
  end
end