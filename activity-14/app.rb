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
        puts "#{@make} #{@model}'s engine is now running"
    end
end

class Chevy < Car
    def start
        puts "#{@make} #{@model}'s engine starts now!"
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
class FriendsController < ApplicationController
    # set_friends gets a specific friend with an id of params[:id]
    before_action :set_friend, only: %i[ show edit update destroy ]
  
    # authenticate_user is an existing helper from devise, goes to sign in page
    before_action :authenticate_user!, except: [ :index, :show ] # new, edit, create, update, destroy
  
    # correct_user is a created helper
    before_action :correct_user, only: [ :edit, :update, :destroy ]
  
    # GET /friends or /friends.json
    def index
      @friends = Friend.all
    end
  
    # GET /friends/1 or /friends/1.json
    def show
    end
  
    # GET /friends/new
    def new
        # @friend = Friend.new
        @friend = current_user.friends.build # new
    end
  
    # GET /friends/1/edit
    def edit
    end
  
    # POST /friends or /friends.json
    def create
        # @friend = Friend.new(friend_params)
        @friend = current_user.friends.build(friend_params) # new
  
        respond_to do |format|
            if @friend.save
                format.html { redirect_to @friend, notice: "Friend was successfully created." }
                format.json { render :show, status: :created, location: @friend }
            else
                format.html { render :new, status: :unprocessable_entity }
                format.json { render json: @friend.errors, status: :unprocessable_entity }
            end
        end
    end
  
    # PATCH/PUT /friends/1 or /friends/1.json
    def update
        respond_to do |format|
            if @friend.update(friend_params)
                format.html { redirect_to @friend, notice: "Friend was successfully updated." }
                format.json { render :show, status: :ok, location: @friend }
            else
                format.html { render :edit, status: :unprocessable_entity }
                format.json { render json: @friend.errors, status: :unprocessable_entity }
            end
        end
    end
  
    # DELETE /friends/1 or /friends/1.json
    def destroy
        @friend.destroy
        respond_to do |format|
            format.html { redirect_to friends_url, notice: "Friend was successfully destroyed." }
            format.json { head :no_content }
        end
    end
  
    # checks if the logged in user_id has a friend with that kind of id
    def correct_user
        @friend = current_user.friends.find_by(id: params[:id])
        redirect_to friends_path, notice: "not authorized to edit this friend" if @friend.nil?
    end
  
    private
    # Use callbacks to share common setup or constraints between actions.
    def set_friend
    @friend = Friend.find(params[:id])
    end    
  
    # Only allow a list of trusted parameters through.
    # added the user_id
    def friend_params
    params.require(:friend).permit(:first_name, :last_name, :email, :phone, :twitter, :user_id)
    end
end