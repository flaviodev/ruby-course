class DiceSet

    def initialize(options={})
        @dice_set = []

        number_of_dices = options[:number_of_dices] || 2

        number_of_dices.times { @dice_set.push(Dice.new) }
    end

    def roll 
        @dice_set.each {|dice| dice.roll}
    end

    def display 
        @dice_set.map { |dice| dice.display }.join(" - ")
    end
end