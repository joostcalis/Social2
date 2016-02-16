class PostsController < ApplicationController
  def show
    @posts = Post.where(:user_id => current_user.friendships)
  end

  private

    def post_params
      params.require(:post).permit(:post_id, :content, :image, :user_id)
    end
end
