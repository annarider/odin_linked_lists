# frozen_string_literal: true

# main contains the main execution
# for running my LinkedList.
#
require_relative 'lib/linked_list'

list = LinkedList.new

list.append('dog')
list.append('cat')
list.append('parrot')
list.append('hamster')
list.append('snake')
list.append('turtle')

puts list # answer: ( dog ) -> ( cat ) -> ( parrot ) -> ( hamster ) -> ( snake ) -> ( turtle ) -> nil
puts list.size # 6

list.prepend('ant')
puts list
puts list.size # 7

puts list.head
puts list.tail

puts list.at(4)

puts list.pop
puts list
