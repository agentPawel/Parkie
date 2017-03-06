class UserSessionsController < ApplicationController

  def new
     @user = User.new
   end

   def create
     if @user = login(params[:email], params[:password])
       flash[:success] = "Login successful!"
       redirect_to user_path(:id)
     else
       flash.now[:alert] = 'Login failed'
       render action: 'new'
     end
   end

   def destroy
     session[:user_id] = nil
     redirect_to 'root_url', notice: 'Logged out!'
   end
 end
