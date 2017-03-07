class SubscriptionsController < ApplicationController
  before_action :require_login

  def new
    @subscription = Subscription.new
  end

  def create
    require
    @subscription = Subscription.new
    @subscription.user_id = current_user.id
    @subscription.park_activity_id = params[:park_activity_id]
    if @subscription.save
      park_id = @subscription.park.id
      activity_id = @subscription.activity.id
      if current_user.cell != nil
        subscription_join_message
      end
      redirect_to park_activity_path(park_id: park_id, id: activity_id)
    else
      redirect_to park_activity_path(park_id: park_id, id: activity_id)
    end
  end

  def destroy
    @subscription = Subscription.find(params[:id])
    park_id = @subscription.park.id
    activity_id = @subscription.activity.id
    @subscription.destroy
    redirect_to park_activity_path(park_id: park_id, id: activity_id)
  end

  def subscription_join_message
    park = @subscription.park.name
    activity = @subscription.activity.name
    sub_id = @subscription_id
    body = "PARKIE: Thank you for subscribing to the #{activity} channel at #{park}!"
    Message.send_message(current_user.cell, body, sub_id)
  end
end
