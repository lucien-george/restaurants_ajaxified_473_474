class RestaurantsController < ApplicationController
  before_action :find_restaurant, only: [ :show, :destroy ]

  def index
    @restaurants = Restaurant.all
    respond_to do |format|
      format.html
      format.json { render json: { restaurants: @restaurants } }
    end
  end

  def show
    @review = Review.new
  end

  def destroy
    @restaurant.destroy
    redirect_to restaurants_path
  end

  private

  def find_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
