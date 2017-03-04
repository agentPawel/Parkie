class SubscriptionsController < ApplicationController
  def new
    @subscription = Subscription.new
  end

  def create
    @subscription = Subscription.new(subscription_params)
    if @subscription.save
      redirect_to "root_url"
    else
      render "new"
  end
end

private

def subscription_params
  params.require(:subscription).permit(:park_activity_id, :user_id)
end
