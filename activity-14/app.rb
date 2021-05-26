# Single responsibility
class Request
    def initialize(method, url)
        @method = method
        @url = url
    end

    def render
        "#{@url}/#{@method}"
    end
end

send_photo = Request.new("POST", "facebook.com/upload-photo")
puts send_photo.render

# Open/Closed Responsibilty
class Car
    def initialize(make, model, year)
        @make = make
        @model = model
        @year = year
    end

    def start
        puts "Engine running for #{@make} #{@model}"
    end
end

class Roadster < Car
    def start
        super
        puts "#{@make} #{@model}'s manufacturing year is #{@year}"
    end
end

class Civic < Car
    def start
        super
        puts "#{@make} #{@model} was made in year #{@year}}"
    end
end

# Liskov Substitution
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

# Interface Segregation Principle
class Car
    def open
    end
  
    def start_engine
    end
  
    def change_engine
    end
end
  
class Driver
    def drive
        @car.open
        @car.start_engine
    end
end
  
class Mechanic
    def do_stuff
        @car.change_engine
    end
end

# Dependency Inversion Principle
class Portfolio < ApplicationRecord
    include Placeholder
    has_many :technologies

    # nested attributes
    accepts_nested_attributes_for :technologies, reject_if: lambda { |attrs| attrs['name'].blank? } # check the new html file for changes, also check the portfolio controller

    # validation
    validates_presence_of :title, :body, :main_image, :thumb_image

    # custom scope
    def self.angular
        where(subtitle: "Angular on rails")
    end

    # another custom scope
    scope :ruby_on_rails_portfolio_items, -> { where(subtitle: "Ruby on rails") }

    after_initialize :set_defaults # after new action has run, before create

    # can also put defaults on the migration file
    def set_defaults
        self.main_image ||= Placeholder.image_generator(height: 600, width: 400) # go to concern folder
        self.thumb_image ||= Placeholder.image_generator(height: 350, width: 200) # go to concern folder
    end
end