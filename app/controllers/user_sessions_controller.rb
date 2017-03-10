class UserSessionsController < ApplicationController

  def new
     @user = User.new
   end

  def create
    if @user = login(params[:email], params[:password])
      flash[:success] = "Login successful!"
      redirect_back_or_to user_path(@user)
    else
      flash.now[:alert] = 'Login failed'
      render action: 'new'
    end
   end

  def destroy
    logout
    redirect_to root_url, notice: 'Logged out!'
  end
 end
