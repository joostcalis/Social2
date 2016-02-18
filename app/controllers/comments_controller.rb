class CommentsController < ApplicationController
  def new
    @post = Post.find(params[:post_id])
    @comment = Comment.new(comment_params)
    @comment.post = @post
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = Comment.new(comment_params)
    @comment.post = @post

    if @comment.save
      respond_to do |format|
        format.html { redirect_to root_path, notice: "Thanks for your comment!" }
        format.json { render json: { comments: @post.comments } }
      end
    else
      respond_to do |format|
        format.html { redirect_to @post, alert: "Comment not saved" }
      end
    end
  end
  private

  def comment_params
    params.require(:comment).permit(
      :reply
    )
end
end
