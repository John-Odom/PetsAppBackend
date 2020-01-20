class FavoritesController < ApplicationController
    def index
        favorites = Favorite.all
        render json: favorites
    end
    def create
        byebug
        favorite=Favorite.create(dog_id: fave_params["dog_id"], user_id:fave_params["user_id"])
        render json: { favorite: favorite }, status: :created
    end

    private
  
    def fave_params
    params.require(:favorite).permit(:dog_id, :user_id)
    end 
end
