class Restaurant < ApplicationRecord
	belongs_to :location, foreign_key: 'locality_id'
	belongs_to :city
	has_many :reviews
	has_many :restaurnat_cuisines
	has_many :cuisines, through: :restaurnat_cuisines
end
