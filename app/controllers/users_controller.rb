class UsersController < ApplicationController

    def index
        authenticate
        render json: @user, include: [:favorites]
    end

    def show
        @user = User.find(params[:id])
        render json: @user, include: [:favorites]
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
