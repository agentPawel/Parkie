class UsersController < ApplicationController
  def index
    @users = Users.all
  end

  def show
    @users = User.find(params[:id])
  end
end
