class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      auto_login(@user)
      redirect_to "http://localhost:3000"
    else
      render 'new'
    end
  end

  def index
    @users = Users.all
  end

  def show
    @users = User.find(params[:id])
  end

  def destroy
    @user = User.find(params[:id])
    @user.destory

    redirect_to "http://localhost:3000"
  end

  private

  def user_params
    params.require(:user).permit(:email, :username, :cell, :password, :password_confirmation)
  end
end
