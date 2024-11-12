class PostsController < ApplicationController
    before_action :authenticate_user!, only: [:new, :create] 
    before_action :set_post, only: %i[show edit update destroy]

    def index
      @posts = Post.page(params[:page]).per(5)
    end

    def show
      @post = Post.find(params[:id])
      @comments = @post.comments.build
    end

    def new
      @post = Post.new
    end

    def create
      @post = Post.new(post_params)

      if @post.save
        flash[:notice] = "Post was successfully created"
        redirect_to @post
      else
        flash[:alert] = "There was an error post was not created"
        render new
      end
    end

    def edit
    end

    def update
      @post = Post.find(params[:id])
      if @post.update(post_params)
        redirect_to @post, notice: "Post aws successfully updated"
      else
        render :edit
      end
    end

    def destroy
      @post = Post.find(params[:id])
      @post.destroy
      redirect_to posts_url, notice: "Post was successfully destroyed"
    end

    private

    def set_post
      @post = Post.find(params[:id])
    end

    def post_params
      params.require(:post).permit(:title, :content, :published_at)
    end
end
