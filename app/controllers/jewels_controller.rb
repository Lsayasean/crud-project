class JewelsController < ApplicationController

    def show
        if params[:partial]
            @jewels = Jewel.where('tags LIKE ?', "%#{params[:partial]}%")
        else
            @jewels = Jewel.all
        end
    end

    def new
        @jewels = Jewel.new
    end

    def create
        @jewels = Jewel.new(jewel_params)

        if @jewels.save
            redirect_to '/jewels'
        else
            render 'new'
        end
    end

    def edit
        @jewels = Jewel.find(params[:id])
    end

    def update
        @jewels = Jewel.find(params[:id])
        if @jewels.update_attributes(jewel_params)
         redirect_to '/jewels'
        else
          render 'edit'
        end
    end

    private
    def jewel_params
        params.require(:jewel).permit(:name, :desc, :tags)
    end
end

    