# frozen_string_literal: true

# LinkedList contains the methods
# for implementing LinkedLists in
# Ruby.
# 
# @example Create a new LinkedList
# list = LinkedList.new
#
require_relative 'lib/node'

class LinkedList
  attr_accessor :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end
end
