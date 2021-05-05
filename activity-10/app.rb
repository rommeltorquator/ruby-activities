# Polymorphism with Duck Typing

class Pizza
    def crust_size(size)
        size.crust_size
    end
end

class ThinCrust
    def crust_size
        puts "Thin Crust Pizza"
    end
end

class ThickCrust
    def crust_size
        puts "Thick Crust Pizza"
    end
end

belly_buster = Pizza.new
managers_choice = Pizza.new

thin_crust = ThinCrust.new
thick_crust = ThickCrust.new

belly_buster.crust_size(thin_crust)
managers_choice.crust_size(thick_crust)