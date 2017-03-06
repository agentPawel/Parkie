class SubscriptionsController < ApplicationController
  def new
    @subscription = Subscription.new
  end

  def create
    @subscription = Subscription.new
    @subscription.user_id = current_user.id
    @subscription.park_activity_id = params[:park_activity_id]
    if @subscription.save
      park_id = @subscription.park.id
      activity_id = @subscription.activity.id
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
end
