class UsersController < ApplicationController
before_action :authenticate_user!

def index
  @users = User.all
end
def new
end
def show
  @user = User.find(params[:id])
  @friendrequests = Friendrequest.all
  @friendrequest = Friendrequest.new
  @friend = @user.to_friend
end
def edit
end
def destroy
  @user.destroy
  redirect_to root_path
end
private
def user_params
  params.require(:user).permit(
    :first_name, :last_name, :birth_date, :city, :country, :photo, :description
  )
end
end
