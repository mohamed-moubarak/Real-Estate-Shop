class Property < ActiveRecord::Base
	validates :description, :street, :area, :city, :surface_area, :price_from, :price_to, presence: true
	belongs_to :user
	has_many :Propertyimages
end
