# Encapsulation

class Human
    def initialize(name, age, address)
        @name = name
        @age = age
        @address = address
    end

    def introduce
        puts "My name is #{@name}, I am #{@age} years of age, I live in #{@address}"
    end
end

rommel = Human.new("Rommel", 19, "Makati City")
rommel.introduce

# rommel.name 
# rommel.age
# rommel.address