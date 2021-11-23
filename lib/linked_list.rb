require_relative './node'

class LinkedList
  attr_accessor :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end

  def reverse!
    reverse_node(@head) unless @head == nil
    @head, @tail = [@tail, @head]
  end

  def reverse_node(node)
    node.reverse!
    reverse_node node.prev_node unless node.prev_node == nil
  end
end
