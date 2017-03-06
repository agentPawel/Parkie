class SearchController < ApplicationController

  def new
    @parks = Park.all
    @activities = Activity.all
    @current_location = Park.near('361 Montrose Ave Toronto', 1.9)
  end


  def address
    @address = Park.find(params[:address])
    Geocode.search("@address")
  end



end
