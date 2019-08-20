class CommentsController < ApplicationController
    def index
        @jewel = Jewel.find(params[:jewel_id])
        @comments = Comment.new
        @post = Comment.where(jewel_id: @jewel.id)
    end

    def create
        @comments = Comment.new(comment_params)
        if @comments.save
            redirect_back fallback_location: { action: "index", id: params[:jewel_id] }
        else
            redirect_to '/jewels/show'
        end
    end

    def update
        @comments = Comment.find(params[:id])
        if @comments.update_attributes(comment_params)
            #gives us the particular jewel we are working on 
            redirect_to jewel_comments_path(@comments.jewel)
        else
            redirect_to '/jewels/show'
        end
    end

    def edit
        @comments = Comment.find(params[:id])
    end

    def destroy
        @comments = Comment.find(params[:id])
        @comments.destroy
        redirect_back fallback_location: { action: "index", id: params[:jewel_id] }
    end

    private 

    def comment_params
        params.require(:comment).permit(:user_id, :jewel_id, :content)
    end
end
