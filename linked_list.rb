class LinkedList
  attr_accessor :contents
  def initialize
    @contents = []
  end
  
  public
  
  def append (value)
    new_node = Node.new
    new_node.value = value
    previous_node = self.contents[-1]
    previous_node.next_node = new_node if previous_node
    self.contents << new_node
  end
  
  def prepend (value)
    new_node = Node.new
    new_node.value = value
    new_node.next_node = self.contents[0] ? self.contents[0] : nil
    self.contents.unshift(new_node)
  end
  
  def size
    self.contents.length
  end
  
  def head
    self.contents[0]
  end
  
  def tail
    self.contents[-1]
  end
  
  def at (index)
    self.contents[index]
  end
  
  def pop
    popped_node = self.contents.pop
    self.contents[-1].next_node = nil
    popped_node
  end
  
  def contains? (element)
    self.contents.each do |i|
      return true if i.value == element
    end
    return false
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