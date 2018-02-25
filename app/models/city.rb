class City < ApplicationRecord
	has_many :locations
	has_many :restaurnats
end
