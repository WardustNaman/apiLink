class Cuisine < ApplicationRecord
	has_many :restaurnat_cuisines
	has_many :restaurants, through: :restaurnat_cuisines
end
