class FavoritesController < ApplicationController
    def index
        @favorites = Favorite.all
        render json: @favorites
    end

    def create
        @favorite = Favorite.create(
            name: params[:name],
            latitude: params[:latitude],
            longitude: params[:longitude],
            user_id: params[:user_id]
        )
        render json: @favorite
    end  
end
