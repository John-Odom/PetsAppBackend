class FavoritesController < ApplicationController
    def index
        favorites = Favorite.all
        render json: favorites
    end
    def create
        favorite=Favorite.create(dog_id: params["dog_id"], user_id:params["user_id"])
        render json: { favorite: favorite }, status: :created
    end
end
