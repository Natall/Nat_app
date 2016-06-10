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

  def create
    @user = User.new(params[:user])

    respond_to do |format|
      if @user.save
        # Сказать UserMailer отослать приветственное письмо после сохранения
        UserMailer.welcome_email(@user).deliver_later

        format.html { redirect_to(@user, notice: 'User was successfully created.') }
        format.json { render json: @user, status: :created, location: @user }
      else
        format.html { render action: 'new' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
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
end