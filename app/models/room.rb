class Room < ActiveRecord::Base
	belongs_to :apartment
	belongs_to :user

	def self.search(parameters) 
		self.where("name LIKE ?","%#{parameters}%")
	end
end
