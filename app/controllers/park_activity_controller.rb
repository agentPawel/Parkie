class ParkActivityController < ApplicationController

  # def index
  #   @park_activities = ParkActivity.all
  # end


  def show
    @park_activity = ParkActivity.find(params[:id])
    @park_activity_event = @park_activity.event 
  end
end
