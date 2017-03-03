class ActivitiesController < ApplicationController
  def index
    @activities = Park.find(params[:park_id]).activities
  end

  def show
    @activity = Activity.find(params[:id])
    @park_list = @activity.parks
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
