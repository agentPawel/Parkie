class ParksController < ApplicationController
  def index
    @parks = Park.all
  end

  def show
    @park = Park.find(params[:id])
    @park_activities = @park.activities
  end

  def all_parks
    @parks = Park.all
    gps = params[:latitude]+','+ params[:longitude]
    @parks.near(gps, 100).size
    respond_to do |format|
      format.json do
        render :json => @parks.near(gps, 100).reverse
      end
    end
  end
end
