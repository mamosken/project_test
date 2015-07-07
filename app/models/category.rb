class Category < ActiveRecord::Base
	has_many :apartments
	has_many :coordinates
end
