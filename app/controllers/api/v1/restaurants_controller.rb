class Api::V1::RestaurantsController < Api::V1::ApiController
	def index
		@restaurants = Restaurant.all
		render json: @restaurants
	end
	
	def show
		@restaurant = Restaurant.find(params[:id])
		new_hash = {"location_name" => @restaurant.location.name,
			"city_name" => @restaurant.city.name,
			"reviews_count" => @restaurant.reviews.length
		}
		@restaurant = JSON::parse(@restaurant.to_json).merge(new_hash)
		render json: @restaurant
	end

	private
	def restaurnat_params
		params[:restaurant].permit(:name, :address, :city_id, :is_featured, :locality_id)
	end
end
