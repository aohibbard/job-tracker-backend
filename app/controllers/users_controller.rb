class UsersController < ApplicationController

    def index
        user = User.all 
        render json: UserSerializers.new(user)
    end 

    def new 
    end 

    def create 
        user = User.create(username: params[:username])
        render json: UserSerializer.new(user)
    end 

    def show 
        user = User.find(params[:id])
        render json: UserSerializer.new(user)
    end 

end
