class ActivitiesController < ApplicationController
  def index
    @activities = Park.find(params[:park_id]).activities
  end

  def show
    @activity = Activity.find(params[:id])
    @park = Park.find(params[:park_id])
    @park_activity = ParkActivity.find_by(park_id: params[:park_id], activity_id: params[:id])

    @park_activity_events = Event.where(park_activity_id: @park_activity)
    @upcoming_events = Event.where("park_activity_id = ? AND date_time BETWEEN ? AND ?", @park_activity, Date.today, 1.week.from_now)

    unless current_user == nil
      @subscription = Subscription.find_by(park_activity_id: @park_activity.id, user_id: current_user.id)
    end
  end

  def park_list
    @activity = Activity.find(params[:id])
    @park_list = @activity.parks
  end

  #add a format json, which returns a json list of parks.
  def activity_near_by
    @activity = Activity.find(params[:id])
    gps = params[:latitude]+','+ params[:longitude]
    @activity.parks.near(gps, 3.9).size
    respond_to do |format|
      format.json do
        render :json => @activity.parks.near(gps, 3.9).reverse
      end
    end
  end


  def new
    @activity = Activity.new
  end

  def create
    @activity = Activity.new(activity_params)
    if @activity.save
      redirect_to root_url
    else
      render :index
    end
  end

  private
  def activity_params
    params.require(:activity).permit(:name)
  end

end
