class JewelsController < ApplicationController

    def show
        @jewel = Jewel.find(params[:id])
    end
    
    def new
        @jewel = Jewel.new
    end

    def create
        @jewel = Jewel.new(jewel_params)

        if @jewel.save
            redirect_to @jewel
        else
            render 'new'
        end
    end

    private
    def jewel_params
        params.require(:jewel).permit(:name, :desc)
    end
end

