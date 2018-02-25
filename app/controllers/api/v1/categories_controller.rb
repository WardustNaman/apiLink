class Api::V1::CategoriesController < Api::V1::ApiController

	
	def index
		@categories = Category.all
		cata = []
		@categories.each do |cat|
		cata.push({"id" => cat.id, "name" => cat.name})
		end
		render json: cata	
	end
end




