class PostsController < ApplicationController
  
  def index
    @posts = Post.all
  end

  def new
    @post = current_user.posts.build
  end

  def create
    @post = current_user.posts.build(post_params)
  end

  def edit
  end

  def show
  end

  private

    def post_params
      params.require(:post).permit(:title, :genre, :content)
    end
    
end
