class Dice
    def initialize
        roll
    end

    def roll 
        @value = rand(6) + 1
    end

    def display 
        "[ #{@value} ]"
    end
end