require_relative 'dice/dice_set'
require_relative 'dice/dice'

puts "--------------------------------"
puts "  Wellcome to the Dice Roller"
puts "--------------------------------"

dice_set = DiceSet.new({number_of_dices: 3})

command = 'r'

until command == 'q' do
    if command == 'r'
        dice_set.roll
        puts "\n#{dice_set.display}" if command == 'r'
    end

    puts "\nType 'r' to roll again, 'q' to quit"
    command = gets.chomp
end
