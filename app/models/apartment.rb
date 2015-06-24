
class Apartment < ActiveRecord::Base

	belongs_to :user
	has_many :rooms, dependent: :destroy
	accepts_nested_attributes_for :rooms, :allow_destroy => true

	# accepts_nested_attributes_for :rooms, 
	# 								reject_if: proc { |attributes| attributes['name'].blank? },
 #  									allow_destroy: true
								  # :reject_if => :all_blank, 
								  # :allow_destroy => true

	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "80x80>" }, :default_url => "/images/:style/missing.png"
	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
	belongs_to :category
	geocoded_by :postal_code
	after_validation :geocode
end

