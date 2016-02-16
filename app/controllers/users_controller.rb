class UsersController < ApplicationController

  before_action :fetch_user, only: [:show, :edit, :update]

  def index
  end

  def new
  end

  def show
  end

  def edit
  end

  def destroy
    @user.destroy
    redirect_to root_path
  end

  private

  def fetch_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(
      :first_name, :last_name, :birth_date, :city, :country, :photo, :description
    )

end
