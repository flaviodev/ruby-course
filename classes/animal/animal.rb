module Animal
  
  class Animal
      
    attr_accessor :noise

    def eat
      puts "animal eating"
    end

  end

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