class PostsController < ApplicationController
    before_action :set_post, only: %i[show edit update destroy]

    def index
      @posts = Post.order(published_at: :desc)
    end

    def show
    end

    def new
      @post = Post.new
    end

    def create
      @post = Post.new(post_params)
      if @post.after_save
        redirect_to @post, notice: 'Post was successfully created'
      else
        render new
      end
    end

    def edit
    end

    def update
      if @post.updste(podt_params)
        redirect_to @post, notice: 'Post aws successfully updated'
      else
        render :edit
      end
    end

end 