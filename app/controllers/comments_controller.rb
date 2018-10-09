class CommentsController < ApplicationController
  
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.build(comment_params)
    @comment.user = current_user
    if @comment.save
      redirect_to post_path(@post)
    else
      render "posts/show"
    end
  end

  def destroy
    @comment = current_user.find(params[:id])
    @comment.destroy
    redirect_to post_path(id: @comment.post_id)
  end

  private
  
    def comment_params
      params.require(:comment).permit(:title, :content)
    end
end
