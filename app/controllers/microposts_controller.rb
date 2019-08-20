class MicropostsController < ApplicationController


    def index
        @jewel = Jewel.find(params[:id])
        @micropost = Micropost.new
        @post = Micropost.where(jewel_id: @jewel.id)
    end

    def create
        @micropost = Micropost.new(micro_params)
        if @micropost.save
            redirect_back fallback_location: { action: "index", id: params[:jewel_id] }
        else
            redirect_to '/jewels/show'
        end
    end

    def update
        @micropost = Micropost.find(params[:id])
        if @micropost.update_attributes(micro_params)
            redirect_to '/jewels/show'
        else
            redirect_to '/jewels/show'
        end
    end

    def edit
        @micropost = Micropost.find(params[:id])
    end

    def destroy
        @micropost = Micropost.find(params[:id])
        @micropost.destroy
        redirect_back fallback_location: { action: "index", id: params[:jewel_id] }
      end

    private 

    def micro_params
        params.require(:micropost).permit(:user_id, :jewel_id, :content)
    end


end
