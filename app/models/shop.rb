class Shop < ActiveRecord::Base
	# has_many :quotations
	belongs_to :market
	def self.located_at(latitude,longitude)
		Shop.where(latitude: latitude, longitude: longitude).first
	end	
end
