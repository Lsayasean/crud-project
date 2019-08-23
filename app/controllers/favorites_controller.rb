class FavoritesController < ApplicationController
    
    def show
        @favorite = Favorite.joins(:user, :jewel).select('users.name as u_name', 'jewels.name as j_name').where(user_id: current_user.id)
    end

    def create
        @favorite = Favorite.new(jewel_params)

        if @favorite.save
            flash[:success] = "Added to favorites"
            redirect_to '/jewels'
        else 
            flash[:danger] = "Gem already a favorite"
            redirect_to '/jewels'
        end
    end



    private

    def jewel_params
        params.require(:favorite).permit(:user_id, :jewel_id)
    end
end
