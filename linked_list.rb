require_relative 'node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def add_first(value)
    new_node = Node.new(value)
  if !@head.nil?
    new_node.next = @head
  end
  
  @head = new_node
  end

  def get_first
    if @head != nil
      return @head.data
    end
  end

  def length
    current_node = @head
    count = 0

    while current_node != nil
      count += 1
      current_node = current_node.next
    end

    return count
  end

  def add_last(value)
    new_node = Node.new(value)

    node = @head

    if @head != nil
      until node.next == nil
        node = node.next
      end

      node.next = new_node

      return new_node
    else
      add_first(value)
    end
  end

  def get_last
    node = @head

    until node.next == nil
      node = node.next
    end

    return node.data
  end

  def get_at_index(index)
    return nil if length < index
    
    node = @head
    index.times do 
      node = node.next
    end
    return node.data
  end

end
