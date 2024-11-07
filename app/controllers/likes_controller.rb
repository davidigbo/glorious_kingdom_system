class LikesController < ApplicationController
    
    def create 
        @post = Post.find(params[:post_id])
        @like = @post.likes.new(user: current_user)

        if @like.save
            redirect_to @posts, notice: 'You have liked this post'
        else
            redirect_to @posts, alert: 'You have already liked this post'
        end
    end

    def destroy
        @post = Post.find(params[:post_id])
        @like = @post.likes.find(params[:id])
        @like.destroy
        redirect_to @post, notice: 'You have unliked this post'
    end
end
