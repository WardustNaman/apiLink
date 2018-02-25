class Api::V1::LocationsController < Api::V1::ApiController
	def index
		@locations = Location.all
		@locations_data = []
		@locations.each do |location|
			new_hash = {"city_name" => location.city.name}
			location = JSON::parse(location.to_json).merge(new_hash)
			@locations_data.push(location)
		end
		render json: @locations_data
	end
end