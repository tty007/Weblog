class PostsController < ApplicationController
  
  def index
    @posts = Post.all
  end

  def new
    @post = current_user.posts.build
  end

  def create
    @post = current_user.posts.build(post_params)
    if @post
      flash[:success] = "ストーリーが作成されました"
      @post.save
      redirect_to :action => 'index'
    else
      flash[:notice] = 'ストーリーは作成されませんでした'
      render new
    end
  end

  def edit
    @post = Post.find_by(id: params[:id])
  end

  def show
    @post = Post.find_by(id: params[:id])
  end

  def update
    @post = Post.find_by(id: params[:id])
    @post.update(post_params)
    redirect_to :action => 'index'
  end

  def destroy
    flash[:notice] = 'ストーリーを削除しました'
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to :action => 'index'
  end

  private

    def post_params
      params.require(:post).permit(:title, :genre, :content)
    end
    
end
