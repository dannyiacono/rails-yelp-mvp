class ReviewsController < ApplicationController
  before_action :set_restaurant
  def create
    @review = Review.new(set_params)
    @review.restaurant = @restaurant
    @review.save
    redirect_to restaurant_path(@restaurant)
  end

  def new
    @review = Review.new
  end

  private

  def set_params
    params.require(:review).permit(:content, :rating)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params['restaurant_id'])
  end
end
