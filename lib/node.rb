# frozen_string_literal: true

# Node defines a node in the
# LinkedList class. It contains
# the data value and points to 
# the next node.
# 
# @example Create a new Node
# node = Node.new
#
class Node
  attr_accessor :value, :next_node

  def initialize
    @value = nil
    @next_node = nil
  end
end
