module Nameable

    attr_accessor :first_name, :last_name

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
