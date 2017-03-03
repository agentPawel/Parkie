class EventsController < ApplicationController
  before_action :require_login, only: [:new, :create]

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      redirect_to "root_url"
    else
      render 'new'
    end
  end

  def show
    @events = Event.find(params[:id])
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy

    redirect_to "root_url"
  end

  def event_params
    params.require(:event).permit(:date_time, :user_id, :park_activity_id)
  end
end
