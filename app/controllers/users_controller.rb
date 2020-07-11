class UsersController < ApplicationController

    # contacts = Contact.where(:user_id => params[:user_id])
    # render json: ContactSerializer.new(contacts)

    def index
        users = User.all
        if users
          render json: UserSerializer.new(users)
        else
          render json: {
            status: 500,
            errors: ['no users found']
          }
        end
    end

    def show
      user = User.find(params[:id])
       if user
        render json: UserSerializer.new(user)
        else
          render json: {
            status: 500,
            errors: ['user not found']
          }
        end
      end
      
      def create
        user = User.create(user_params)
        if user.save
          login!
          render json: UserSerializer.new(user)
        else 
          render json: {
            status: 500,
            errors: @user.errors.full_messages
          }
        end
      end
      
    private
      
    def user_params
        params.require(:user).permit(:username)
      end
    end