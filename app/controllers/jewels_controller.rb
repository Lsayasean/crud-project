class JewelsController < ApplicationController

    def show
        @jewels = Jewel.all
    end

    def search
        if params[:search].blank?
            @jewel = Jewel.all
        else
            @jewel = Jewel.search(params)
        end
    end

    
    def new
        @jewel = Jewel.new
    end

    def create
        @jewel = Jewel.new(jewel_params)

        if @jewel.save
            redirect_to '/jewels/show'
        else
            render 'new'
        end
    end

    def edit
        @jewel = Jewel.find(params[:id])
    end

    def update
        @jewel = Jewel.find(params[:id])
        if @jewel.update_attributes(jewel_params)
         redirect_to '/jewels/show'
        else
          render 'edit'
        end
    end

    private
    def jewel_params
        params.require(:jewel).permit(:name, :desc, :tags)
    end
end

