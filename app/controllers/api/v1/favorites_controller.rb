require 'pry'

class Api::V1::FavoritesController < ApplicationController
    def index 
        favorites =Favorite.all
        render json: favorites
    end 

    def create
         favorite= Favorite.find_or_create_by(favorite_params)
         render json: favorite
    end

    private

    def favorite_params
        params.require(:favorite).permit(:location)
    end

end
