class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
    # @restaurants.each do |restaurant|
    #   reviews = restaurant.reviews
    #   sum = 0
    #   i = 0
    #   reviews.each do |review|
    #     sum += review.rating
    #     i += 1
    #   end
    #   @average_rating = sum / i
    # end
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @reviews = @restaurant.reviews
    sum = 0
    i = 0
    @reviews.each do |review|
      sum += review.rating
      i += 1
    end
    @average_rating = (sum.to_f / i).round(2)
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.create(restaurant_params)

    redirect_to restaurant_path(@restaurant)
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end
