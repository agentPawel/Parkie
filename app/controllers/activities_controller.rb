class ActivitiesController < ApplicationController
  def index
    @activities = Activies.all
  end

  def show
    @activities = Activities.find(params[:id])
  end
end
