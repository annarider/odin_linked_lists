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
  attr_accessor :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end

  def append(value)
    node = Node.new
    node.value = value
    current = @head
    return @head = node if current.nil?

    unless current.next_node.nil?
      current = current.next_node
    end
    current.next_node = node if current.next_node.nil?
  end

  def to_s
    list = ''
    current = @head
    unless current.next_node.nil?
      list += "( #{current.value} ) -> "
    end
    list += 'nil' if current.next_node.nil?
    list
  end
end
