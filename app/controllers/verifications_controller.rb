class VerificationsController < ApplicationController



  def new
    @user = User.find(session[:user_id])
  end

  def create
    @user = User.find(params[:user_id])
    if @user.verification == params[:verification]
      @user.update(verification: "verified")
      # session[:authenticated] = true
      flash[:notice] = "Welcome #{@user.username}!"
      redirect_to user_path(@user.id)
    else
      flash.now[:error] = "Verification code is incorrect"
      render :new
    end
  end

end
