def puts_title(value, bar_char = '-')
    weight = value.length * 3
    space = " " * value.length
    bar = bar_char * weight
    
    puts "\n#{bar}"
    puts "#{space}#{value}"
    puts bar
    puts "\n"
end
    