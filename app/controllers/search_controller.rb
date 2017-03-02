class SearchController < ApplicationController

  def new
    @parks = Park.all
    @activities = Activity.all
  end

end
