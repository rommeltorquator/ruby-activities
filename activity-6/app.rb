class Confection
    def bake
        puts "Baking at 350 degrees for 25 minutes"
    end
end

class CupCake < Confection
    def frost
        puts "Applying frosting"
    end
end

class BananaCake < Confection
end

banana = BananaCake.new
banana.bake

cupcake = CupCake.new
cupcake.bake
cupcake.frost