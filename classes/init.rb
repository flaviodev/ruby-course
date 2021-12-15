require_relative 'person/person'
require_relative 'animal/animal'
require_relative 'animal/pig'

person = Person.new
person.first_name = "José"
person.last_name = "Dias"
puts person.full_name
puts person.initial_and_last_name
person.eighteen
puts person.age

pig = Animal::Pig.new
puts pig.noise
