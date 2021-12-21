def threeTimes
    yield
    yield
    yield
end

puts
puts "-" * 20

threeTimes { puts "Hello" }

def do_with_word(word)
    puts "before"
    yield(word)
    puts "after"
end

puts
puts "-" * 20

do_with_word("test") { |word| word.chars.each { |c| puts c }}

puts
puts "-" * 20


def fibUpTo(max)
    if block_given?
        i1, i2 = 1, 1        # parallel assignment
        while i1 <= max
            yield i1
            i1, i2 = i2, i1+i2
        end
    else
        :no_block
    end
end
fibUpTo(1000) { |f| print f, " " }

puts

fibUpTo 1000 do |f| 
    print f, " " 
end

puts

fibUpTo(1000)

puts
puts "-" * 20


class Array
    def find
        for i in 0...size
            value = self[i]
            return value if yield(value)
        end
        return nil
    end

    def reverse
        "override reverse"
    end
end

puts [1, 3, 5, 7, 9].find {|v| v*v > 30 }

puts
print [1, 3, 5, 7, 9].reverse

puts
puts "-" * 20


class MyButton

    def initialize(label, &on_click)
        @label = label
        @on_click = on_click
    end

    def click(target = nil)
        @on_click.call(target)
    end
end

buttons = []
buttons << MyButton.new("Say hello") { puts "Hello!!!!!" }
buttons << MyButton.new("Say bye") { puts "Bye!!!!!" }

buttons.each { |b| b.click }

lambda_function = lambda { |n| n.upcase }

b = MyButton.new("Test upper") { |n| n.upcase }
puts b.click("test")

b2 = MyButton.new("Test upper") do |n| 
    n.upcase 
end
puts b2.click("test")

b3 = MyButton.new("Test upper", &lambda_function)
puts b3.click("test")

puts
puts "-" * 20



