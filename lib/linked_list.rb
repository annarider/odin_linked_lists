# frozen_string_literal: true

# LinkedList contains the methods
# for implementing LinkedLists in
# Ruby.
# 
# @example Create a new LinkedList
# list = LinkedList.new
#
require_relative 'node'

class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def append(value)
    if @head.nil?
      @head = Node.new(value)
    else
      current = @head
      until current.next_node.nil?
        current = current.next_node
      end
      current.next_node = Node.new(value)
    end
  end

  def prepend(value)
    if @head.nil?
      @head = Node.new(value)
    else
      old_head = @head
      @head = Node.new(value, old_head)
    end
  end

  def size
    size = 0
    return size if @head.nil?

    current = @head
    until current.next_node.nil?
      size += 1
      current = current.next_node
    end
    size += 1
  end
 
  def head
    @head.value    
  end

  def tail
    return nil if @head.nil?

    current = @head
    until current.next_node.nil?
      current = current.next_node
    end
    current.value
  end

  def at(index)
    current_index = 0
    return nil if @head.nil?

    current = @head
    until index == current_index
      current = current.next_node
      current_index += 1
    end
    current.value
  end

  def to_s
    list = ''
    current = @head
    until current.next_node.nil?
      list += "( #{current.value} ) -> "
      current = current.next_node
    end
    list += "( #{current.value} ) -> nil" if current.next_node.nil?
    list
  end
end
