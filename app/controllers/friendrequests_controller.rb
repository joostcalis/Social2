class FriendrequestsController < ApplicationController
  def new
    @friendrequest = Friendrequest.new
    @friendrequest.friend_id = current_user.id
    @user = User.find(params[:user_id])
    @friendrequest.user_id = @user.id
  end

  def create
    @friendrequest = Friendrequest.new(friendrequest_params)
    @friendrequest.friend_id = current_user.id
    @user = User.find(params[:user_id])
    @friendrequest.user_id = @user.id
    @friend = Friend.find(current_user.id)
    if @friendrequest.save
      @user.friends << @friend
      
      redirect_to root_path
    else
      render :new
    end
  end

private

def friendrequest_params
    params.require(:friendrequest).permit(:status)
  end
end
