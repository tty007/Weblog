class CommentsController < ApplicationController
  
  #未完成
  def create
    @comment = Comment.new(comment_params)
    @post = Post.find(params[:post_id])
    if @comment.save
      redirect_to post_path(@post)
    else
      render post_path(@post)
    end
  end

  def destroy
    @comment = Comment.find_by(id: params[:id])
    @post = Post.find_by(id: @comment.post_id)
    if @comment
      @comment.destroy
      redirect_to post_path(@post)
    else
      flash.now[:notice] = 'コメント削除は正常に処理されませんでした'
      render post_path(@post)
    end
  end

  private
  
    def comment_params
      params.require(:comment).permit(:title, :content)
    end
end
