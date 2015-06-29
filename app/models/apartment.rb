
class Apartment < ActiveRecord::Base

	belongs_to :user
	belongs_to :category
	has_many :prices
	has_many :rooms, dependent: :destroy
	accepts_nested_attributes_for :rooms, :allow_destroy => true

	# accepts_nested_attributes_for :rooms, 
	# 								reject_if: proc { |attributes| attributes['name'].blank? },
 #  									allow_destroy: true
								  # :reject_if => :all_blank, 
								  # :allow_destroy => true

	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "80x80>" }, :default_url => "/images/:style/missing.png"
	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
	geocoded_by :postal_code
	after_validation :geocode

	def self.update_postal_codes
		self.all.each do |apt|
			zipcode = Category.find(apt.category_id) rescue nil
			unless zipcode
				new_cat_id = Category.find_by(postal_code: apt.postal_code)
				apt.update(category_id: new_cat_id) if new_cat_id
			end
		end
	end

end

