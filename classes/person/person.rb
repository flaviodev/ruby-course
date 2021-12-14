class Person

    attr_accessor :first_name, :last_name, :age

    def age=(age) 
        raise "Age must be greater than or equals 0" if age < 0 
        @age = age
    end

    def eighteen
        self.age = 18
    end

    def full_name
        "#{first_name} #{last_name}"
    end

    def initial_and_last_name
        "#{initial(first_name)} #{last_name}"
    end

private

    def initial(value)
        "#{value.chars.first}."
    end
end
