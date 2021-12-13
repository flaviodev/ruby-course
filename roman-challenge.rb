symbol_map = {
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

digit_type_map = {
    units: 0,
    tens: 1,
    hundreds: 2,
    thousands: 3
}

def digitByType(number, digit_type, digit_type_map) 
    digits = number.to_s.reverse.split('').map { |digit| digit.to_i } 

    digit_position = digit_type_map[digit_type]

    return digit_position ? digit(digits, digit_position) : ( raise "invalid digit type" )
end

def digit(digits, digit_position) 
    return digits.size < digit_position + 1 ? 0 : digits[digit_position]
end

def evaluateDigit(digit, oneSymbol, fiveSymbol, tenSymbol)
    unless (0..9).include?(digit) 
        raise "the digit must be between 0 and 9"
    end

    if oneSymbol.nil? || fiveSymbol.nil? || tenSymbol.nil?
        raise "symbol can not be nil"
    end

    return case digit
        when 0 
            ""
        when 1..3 
            oneSymbol * digit
        when 4 
            oneSymbol + fiveSymbol
        when 5 
            fiveSymbol
        when 6..8 
            fiveSymbol + oneSymbol * (digit - 5)
        when 9 
            oneSymbol + tenSymbol
    end
end

def convert(number, symbol_map, digit_type_map) 
    unless (1..9999).include?(number) 
        raise "the number must be between 1 and 9,999"
    end

    digits = {
        1 => digitByType(number, :units, digit_type_map),
        10 => digitByType(number, :tens, digit_type_map),
        100 => digitByType(number, :hundreds, digit_type_map),
        1000 => digitByType(number, :thousands, digit_type_map)
    }

    result = ""

    3.downto(0) { |i|
        factor = 10 ** i

        result += evaluateDigit(digits[factor], symbol_map[factor], symbol_map[factor * 5], symbol_map[factor * 10])
    }

    return result
end

number = ARGV[0].to_i

puts convert(number, symbol_map, digit_type_map)
