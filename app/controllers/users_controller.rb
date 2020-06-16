class UsersController < ApplicationController
    def index
        users = User.all
        render json: users
    end

    def show
        user = User.find_by(id: params[:id])
        render json: user
    end

    def create 
        # user = User.find_or_create_by(username: user_params)
        user = User.new(username: user_params[:username], email: user_params[:email])
        if user.save
            render json: user
        else  
            render json: { error: "Username or Email already exists" }
        end
    end

    def update 
        user = User.find(params[:id])
        if user.update
            render json: user
        else  
            render json: { error: "Username or Email already exists" }
        end
    end

    def destroy
		user = User.find(params[:id])
		user.destroy
		render json: { message: "Sucessfully deleted user." }
	end

    private

    def user_params
        params.require(:user).permit(:username, :email)
    end
end
