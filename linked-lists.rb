class LinkedList

  def initialize
    @head = Node.new
  end

  def append object
    node = Node.new
    node.value = object

    current = @head
    current = current.next until current.next.nil?
    current.next = node
  end

  def prepend object
    node = Node.new
    node.value = object

    node.next = @head.next
    @head.next = node
  end

  def size
    size = 0
    current = @head
    until current.next.nil?
      size +=1
      current = current.next
    end

    return size
  end

end


class Node
  attr_accessor :value, :next

  def initialize
    @value = nil
    @next = nil
  end
end
