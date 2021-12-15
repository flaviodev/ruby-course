require 'date'
require_relative 'titleable'

puts_title("Birthdate Analysis")

puts "\nWhat year were you born?"
year = gets.chomp

puts "\nWhat number month were you born?"
month = gets.chomp

puts "\nWhat date of the month were you born?"
day = gets.chomp

birth_date = Date.new(year.to_i, month.to_i, day.to_i)

puts "\n-----------------------------------------------------------------"
puts "You were born on a #{birth_date.strftime("%A")}."
puts "It was the #{birth_date.cweek} week of the year."
puts "It was the #{birth_date.yday} day of the year."
puts "You were #{"not" unless birth_date.leap?} born in a leap year."
puts "-----------------------------------------------------------------"
