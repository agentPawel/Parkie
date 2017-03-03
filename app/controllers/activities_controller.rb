class ActivitiesController < ApplicationController
  def index
    @activities = Park.find(params[:park_id]).activities
  end

  def show
    @activity = Activity.find(params[:id])
    @park = Park.find(params[:park_id])
    @park_activity = ParkActivity.where(park_id: params[:park_id], activity_id: params[:id]).ids
    @park_activity_events = Event.where(park_activity_id: @park_activity)
  end

  def new
    @activity = Activity.new
  end

  def create
    @activity = Activity.new(activity_params)
    if @activity.save
      redirect_to "root_url"
    else
      render :index
    end
  end


  private
  def activity_params
    params.require(:activity).permit(:name)
  end

end
