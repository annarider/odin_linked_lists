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

puts list.contains?('ant')
puts list.contains?('hamster')
puts list.contains?('deer')
puts list.find('ant')
puts list.find('hamster')
p list.find('deer')
puts list.pop
puts list

list.insert_at('bee', 1)
puts list
list.insert_at('turtle', 3)
list.insert_at('zebra', 23)
puts list
puts list.size

list.remove_at(5)
puts list
list.remove_at(2)
puts list
list.remove_at(4)
puts list
