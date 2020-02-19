class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def create
    @restaurant = Restaurant.new(set_params)
    @restaurant.save
  end

  def new
    @restaurant = Restaurant.new
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  private

  def set_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end
