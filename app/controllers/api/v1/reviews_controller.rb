class Api::V1::ReviewsController < Api::V1::ApiController
	def index
		@restaurant = Restaurant.find(params[:restaurant_id])
		@reviews = @restaurant.reviews
		render json: @reviews
	end
end