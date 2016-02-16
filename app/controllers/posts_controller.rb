class PostsController < ApplicationController
  def index
    @posts = current_user.friends.posts
  end

  private

    def post_params
      params.require(:post).permit(:post_id, :content, :image, :user_id)
    end
end
