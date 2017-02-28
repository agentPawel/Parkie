class ParksController < ApplicationController
  def index
    @parks = Park.all
  end

  def show
    @park = Park.find(params[:id])
  end

  def new
    @park = Park.new
  end

  def create
    @park = Park.new(park_params)
  end

  private
  def park_params
    params.require(:park).permit(:name, :address)
  end

end
