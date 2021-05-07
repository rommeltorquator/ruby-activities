# Polymorphism with Inheritance

class Car
    def initialize(make, model)
        @make = make
        @model = model
    end

    def beep
        puts "Beep Beep Beep!"
    end
end

class Innova < Car
    def beep
        puts "Beeeeeeeeep Beeeeeeeeep!"
    end
end

class City < Car
    def beep
        puts "Beep!"
    end
end

innova = Innova.new("Toyota", "Innova")
innova.beep

city = City.new("Honda", "City")
city.beep

# Polymorphism with Duck Typing

class Pizza
    def crust_size(size)
        size.crust_size
    end
end

class ThinCrust < Pizza
    def crust_size
        "Thin Crust Pizza"
    end
end

class ThickCrust < Pizza
    def crust_size
        "Thick Crust Pizza"
    end
end

belly_buster = Pizza.new
managers_choice = Pizza.new

thin_crust = ThinCrust.new
thick_crust = ThickCrust.new

puts belly_buster.crust_size(thin_crust)
puts managers_choice.crust_size(thick_crust)