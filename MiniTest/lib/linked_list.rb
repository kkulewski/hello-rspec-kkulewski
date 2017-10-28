class Node
  attr_accessor :value, :previous_node, :next_node

  def initialize(value, previous_node, next_node)
    @value = value
    @previous_node = previous_node
    @next_node = next_node
  end
end

class Deque
  def initialize
    @head = nil
    @tail = nil
  end

  def push(value)
    if @head.nil?
      @head = @tail = Node.new(value, nil, nil)
    else
      new_tail = Node.new(value, @tail, nil)
      @tail.next_node = new_tail
      @tail = new_tail
    end
    value
  end

  def pop
    if @tail.nil?
      nil
    else
      value = @tail.value
    end
    if @tail == @head
      @head = @tail = nil
    else
      new_tail = @tail.previous_node
      new_tail.next_node = nil
      @tail = new_tail
    end
    value
  end

  def unshift(value)
    if @head.nil?
      @head = @tail = Node.new(value, nil, nil)
    else
      new_head = Node.new(value, nil, @head)
      @head.previous_node = new_head
      @head = new_head
    end
    value
  end

  def shift
    if @head.nil?
      nil
    else
      value = @head.value
    end
    if @tail == @head
      @head = @tail = nil
    else
      new_head = @head.next_node
      new_head.previous_node = nil
      @head = new_head
    end
    value
  end
end
