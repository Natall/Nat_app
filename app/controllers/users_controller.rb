class UsersController < ApplicationController
  # before_action :signed_in_user, only: [:index, :edit, :update, :destroy, :following, :followers]
  # before_action :correct_user,   only: [:edit, :update]

  def index
    @users = User.paginate(page: params[:page])
  end

  def show
    @user = User.find(params[:id])
    @phrases = @user.phrases.paginate(page: params[:page])
  end

  def new
    @user = User.new
  end
end


private

def user_params
  params.require(:user).permit(:name, :email, :password,
                               :password_confirmation)
end

def correct_user
  @user = User.find(params[:id])
  redirect_to(root_url) unless current_user?(@user)
end