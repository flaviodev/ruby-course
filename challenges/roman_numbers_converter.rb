class RomanNumbersConverter

    @@symbol_map = {
        1 => "I",
        5 => "V",
        10 => "X",
        50 => "L",
        100 => "C",
        500 => "D",
        1000 => "M",
        5000 => "ↁ",
        10000 => "ↂ"
    }
    
    @@place_value_map = {
        ones: 0,
        tens: 1,
        hundreds: 2,
        thousands: 3
    }


    def self.convert(number) 
        unless (1..9999).include?(number) 
            raise "the number must be between 1 and 9,999"
        end
    
        digits = {
            1 => digit_by_type(number, :ones),
            10 => digit_by_type(number, :tens),
            100 => digit_by_type(number, :hundreds),
            1000 => digit_by_type(number, :thousands)
        }
    
        roman_number = ""
    
        3.downto(0) { |i|
            place_value = 10 ** i
    
            digit = digits[place_value]
            one_symbol = @@symbol_map[place_value]
            five_symbol = @@symbol_map[place_value * 5]
            ten_symbol = @@symbol_map[place_value * 10]
    
            roman_number += evaluate_digit(digit, one_symbol, five_symbol, ten_symbol)
        }
    
        roman_number
    end

private

    def self.digit_by_type(number, digit_type) 
        digits = number.to_s.reverse.split('').map { |digit| digit.to_i } 
    
        place_value = @@place_value_map[digit_type]
    
        place_value ? digit(digits, place_value) : ( raise "invalid digit type" )
    end
    
    def self.digit(digits, place_value) 
        digits.size < place_value + 1 ? 0 : digits[place_value]
    end
    
    def self.evaluate_digit(digit, one_symbol, five_symbol, ten_symbol)
        unless (0..9).include?(digit) 
            raise "the digit must be between 0 and 9"
        end
    
        if one_symbol.nil? || five_symbol.nil? || ten_symbol.nil?
            raise "symbol can not be nil"
        end
    
        case digit
            when 0 
                ""
            when 1..3 
                one_symbol * digit
            when 4 
                one_symbol + five_symbol
            when 5 
                five_symbol
            when 6..8 
                five_symbol + one_symbol * (digit - 5)
            when 9 
                one_symbol + ten_symbol
        end
    end
end

number = ARGV[0].to_i

puts RomanNumbersConverter.convert(number)
