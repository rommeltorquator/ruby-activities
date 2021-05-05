# Abstraction

class Cars
    def initialize(make, model, year)
        @make = make
        @model = model
        @year = year
    end

    def run
        show_info # private method
        puts "Turning on the engine..."
        drive # private method
    end

    private
    def show_info
        puts "#{@make} #{@model}, year #{@year}"
    end

    def drive
        puts "Driving now..."
    end
end

sarao = Cars.new("Honda", "Jazz", 2000)
sarao.run