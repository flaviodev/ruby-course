require_relative 'to_do_list'
require_relative '../titleable'

list = ToDoList.new(['dishes', 'nap', 'laundry', 'vacuum'])

puts_title("TODO List")

puts list.map { |item| "> #{item.capitalize}" }

print "\nFirst: " 
puts list.first

print "\nLongest: " 
puts list.find { |item| item.length > 6 }

list << "sweep"

print "\nUpdated list: " 
puts list.map { |item| "> #{item.capitalize}" }

puts "\nUpdated list: " 
puts list.map { |item| "> #{item.capitalize}" }

puts "\nSorted list: " 
list.sort.each_with_index { |item, i| puts "#{i}: #{item.capitalize}" }
