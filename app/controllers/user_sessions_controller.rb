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
     logout
     redirect_to :back, notice: 'Logged out!'
   end
 end
