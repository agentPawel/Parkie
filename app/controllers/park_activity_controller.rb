class ParkActivityController < ApplicationController

  # def index
  #   @park_activities = ParkActivity.all
  # end


  def show
    @park_activity = ParkActivity.find(params[:id])
    @park_activity_events = @park_activity.events
  end
end
