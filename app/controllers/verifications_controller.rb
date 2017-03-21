class VerificationsController < ApplicationController



  def new
    @user = User.find(session[:user_id])
  end

  def create
    @user = User.find(params[:user_id])
    if @user.verification == params[:verification]
      @user.update(verification: "verified")
      verify_message(@user)
      # session[:authenticated] = true
      flash[:notice] = "Welcome #{@user.username}!"
      redirect_to user_path(@user.id)
    else
      flash.now[:notice] = "Verification code is incorrect"
      render :new
      
    end
  end




  def verify_message(user)

    body = "PARKIE: Hi #{user.username}! Parkie will alert you whenever someone creates an event at a channel you subscribe to or when someone joins an event that you created!!"
    Message.send_message(user.cell, body)
  end



end
