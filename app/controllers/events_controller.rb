class EventsController < ApplicationController
  skip_before_action :require_login, only: [:index, :new, :create]

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      redirect_to "http://localhost:3000"
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

    redirect_to "http://localhost:3000"
  end

  def event_params
    params.require(:event).permit(:date_time)
  end
end
