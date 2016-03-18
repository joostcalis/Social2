class HugsController < ApplicationController
before_action :authenticate_user!
def index
end

  def create
    @post = Post.find(params[:post_id])
    @hug = Hug.new
    @hug.user = current_user
    @hug.post = @post

    if @hug.save
      respond_to do |format|
        format.html { redirect_to @post, notice: "Thanks for your hug!" }
        format.json { render json: { hugs: @post.hugs.count } }
      end
    else
      respond_to do |format|
        format.html { redirect_to @post, alert: "Awwwhh snap! Don't touch me!" }
      end
    end
  end
end
