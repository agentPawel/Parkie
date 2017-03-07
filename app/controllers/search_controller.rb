class SearchController < ApplicationController

  def new
    @parks = Park.all
    @activities = Activity.all
    # @current_location = Park.near('361 Montrose Ave Toronto', 1.9)
  end


  def address
    @address = Park.find(params[:address])
    Geocode.search("@address")
  end

  def parks_near_by
    gps = params[:latitude]+','+ params[:longitude]
    Park.near(gps, 2.9).size
    respond_to do |format|
      format.json do
        render :json => Park.near(gps, 2.9)
      end
    end
    # @parks.each do |park|
    #   park.nearbys(1.9).each do |near_park|
    #   link_to near_park.name near_park.distance.round(2) kms)
    # end
  end



end
