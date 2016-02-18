class PostsController < ApplicationController
  def new
      @post = Post.new
    end

  def index
    @posts = Post.all
    @post = Post.new
  end
  def create
    @post = Post.new(post_params)
    @post.user = current_user
    if @post.save
        # format.html { redirect_to posts_path, notice: 'Post was successfully created.' }
        # format.json { render :show, status: :created, location: @post }
        redirect_to root_path
      else
        # format.html { render :new }
        # format.json { render json: @post.errors, status: :unprocessable_entity }
        render :new
      end
    end



  private

    def post_params
      params.require(:post).permit(:content, :image)
    end
end
