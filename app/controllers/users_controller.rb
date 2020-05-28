class UsersController < ApplicationController

    def index
        @users = User.all
        render json: @users, include: [:favorites]
    end

    def create
        @user = User.create(
            username: params[:username],
            password: params[:password],
            location: params[:location],
        )
        render json: @user
    end  

    def update
        @user = User.find(params[:id])
        @user = User.update(
            username: params[:username],
            password: params[:password],
            location: params[:location],
        )
        render json: @user
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy
    end

end
