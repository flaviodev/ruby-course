require_relative 'titleable'

puts_title("Ruby Guessing Game")

puts "\nWhat is your name?"
name = gets

puts "\n\nHello, #{name.chomp}."

puts "\n\nWe are going to play a guessing game."

puts "\n\n1: Easy"
puts "2: Medium"
puts "3: Hard"
print "Please, choose a level:"
level = gets.to_i

level_map = {
    1 => 10,
    2 => 25,
    3 => 50
}

size = level_map[level] || level_map[1]
max_attempts = size/(3*level)

puts "\n\nI will choose a random number between 1 and #{size}"
puts "and you will have #{max_attempts} chances to guess it."

secret_number = rand(10) + 1

def winMessage()
    puts "\n\nCongrats! You guessed the number!"
end

def lostMessage(my_number)
    puts "\n\nThat was your last guess."
    puts "My number was #{my_number}."
end

def tip(guess, my_number) 
    comparation = my_number > guess ? "greater" : "less"
    puts "My number is #{comparation} than that."
end

puts "\n\nOkay, I have my number."

max_attempts.times { |i|
    print "\nGuess #{i+1}: "
    guess = gets.to_i

    if guess == secret_number
        winMessage()
        break
    else
        puts "Sorry, that was not it."
        if i == max_attempts - 1
            lostMessage(secret_number)
        else
            tip(guess, secret_number)
        end
    end
}
