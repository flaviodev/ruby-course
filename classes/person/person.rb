require_relative 'nameable'

class Person

    include Nameable
    attr_accessor :age

    def age=(age) 
        raise "Age must be greater than or equals 0" if age < 0 
        @age = age
    end

    def eighteen
        self.age = 18
    end

end
