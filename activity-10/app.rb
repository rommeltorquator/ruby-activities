# Polymorphism with Duck Typing and Inheritance

class Pizza
    def bake
        "Now baking"
    end

    def crust_size(size)
        size.crust_size
    end
end

class ThinCrust < Pizza
    def bake
        "#{crust_size} is now baking"
    end

    def crust_size
        "Thin Crust Pizza"
    end
end

class ThickCrust < Pizza
    def bake
        "#{crust_size} is now baking"
    end

    def crust_size
        "Thick Crust Pizza"
    end
end

belly_buster = Pizza.new
managers_choice = Pizza.new

thin_crust = ThinCrust.new
thick_crust = ThickCrust.new

puts thin_crust.bake
puts thick_crust.bake

puts belly_buster.crust_size(thin_crust)
puts managers_choice.crust_size(thick_crust)