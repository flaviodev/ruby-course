require_relative 'animal'

module Animal

  class Pig < Animal

    def initialize
        @noise = "Oink!"
    end

    def eat
        super
        "non non non non"
    end

  end

end
