class UsersController < ApplicationController
  # skip_before_action :require_login, only: [:index, :new, :create]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      auto_login(@user)
      User.send_confirmation_to(@user)
      redirect_to new_user_verification_path(@user), notice: 'Please verify your phone number.'
      # redirect_to user_path(:id)
    else
      render :new
    end
  end

  def edit
  @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      redirect_to user_path(:id)
    else
      render :new
    end
  end

  def show
    unless current_user == nil
      @user = current_user

      # Pulls an array of a users active subscriptions
      @user_subscriptions = @user.subscriptions

      # Pulls a users owned events
      @owned_events = @user.owned_events

      # Pulls an array of a users current events they are attending
      @user_events = @user.attended_events
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destory
    redirect_to root_url
  end

  private

  def user_params
    params.require(:user).permit(:email, :avatar, :username, :cell, :password, :password_confirmation)
  end
end
