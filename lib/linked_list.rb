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
