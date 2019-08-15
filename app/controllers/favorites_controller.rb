class FavoritesController < ApplicationController

    def show
        @favorite = Favorite.all
    end

    def create
        @favorite = Favorite.new(favorite_params)

        if @favorite.save
            redirect_to '/my-favorites'
        else 
            redirect_to '/'
        end
    end

    private

    def favorite_params
        params.permit(:user_id, :jewel_id)
    end
end
