class ParkActivityController < ApplicationController
  def show
    @park_activity = ParkActivity.find(params[:id])
  end
end
