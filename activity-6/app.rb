class Confection
    def baking
        puts "Baking at 350 degrees for 25 minutes"
    end
end

class Cupcake < Confection
    def frosting
        puts "Applying frosting"
    end
end

class BananaCake < Confection
end

banana = BananaCake.new
banana.baking

cupcake = Cupcake.new
cupcake.baking
cupcake.frosting