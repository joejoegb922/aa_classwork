class UsersController < ApplicationController

    def index
        users = User.all
        render json: users
        
    end

    def show
        user = User.find(params[:id])
        render json: user
    end


    def create
        user = User.new(user_params)
        if user.save
            render json: user
        else
            render json: user.errors.full_messages, status: 422

        end 
        
    end

    def user_params 
        params.require(:user).permit(:username)
    end 

    def destroy 
        user = User.find_by(id: params[:id])

        if user 
            user.destroy
            render json: user
        end 


    end 

end