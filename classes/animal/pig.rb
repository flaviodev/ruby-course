require_relative 'animal'

class Pig < Animal

    def initialize
        @noise = "Oink!"
    end

    def eat
        super
        "non non non non"
    end
end