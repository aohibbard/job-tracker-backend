class SessionsController < ApplicationController

    # change to user Fast JSON
    def create 
        @user = User.find_by(username: params[:username])
        if @user
            login!
            render json: {
                logged_in: true,
                user: @user
            }
        else
            render json: { 
                status: 401,
                errors: ['no such user', 'verify credentials and try again or signup']
            }
    end 

    def is_logged_in?
        if logged_in? && current_user
            render json: {
                logged_in: true,
                user: current_user
            }
        else 
            render json: {
                logged_in: false,
                message: 'User does not exist'
            }
        end 
    end 

    def destroy
        logout
        render json: {
            status: 200,
            logged_out: true 
        }
    end 

end