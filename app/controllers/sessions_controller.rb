class SessionsController < ApplicationController

    def create 
        @user = User.find_by(username: params[:username])
        # add to conditional @user.authenticate(session_params[:password])
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

    private 

    # add additional user params name, email, pw
    def session_params
        params.require(:user).permit(:username)
    end 

end